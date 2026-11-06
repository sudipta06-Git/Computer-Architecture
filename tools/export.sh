#!/usr/bin/env bash
# Usage: ./tools/export.sh <master-video> <lesson-dir> [srt]
# Creates renders/<name>_1080p.mp4, <name>_4k.mp4 (if master >= 4K) and <name>_vertical.mp4
set -euo pipefail
IN="${1:?master video}"; DIR="${2:?lesson dir}"; SRT="${3:-}"
OUT="$DIR/renders"; mkdir -p "$OUT"
NAME="$(basename "$DIR")"
SUB=()
[ -n "$SRT" ] && SUB=(-vf "subtitles=$SRT:force_style='FontSize=22,Outline=1'")

# 16:9 Full HD
ffmpeg -y -i "$IN" "${SUB[@]}" -vf "scale=1920:1080:flags=lanczos" \
  -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -r 30 \
  -c:a aac -b:a 192k -movflags +faststart "$OUT/${NAME}_1080p.mp4"

# 4K (only if source is at least 3840 wide)
W=$(ffprobe -v error -select_streams v:0 -show_entries stream=width -of csv=p=0 "$IN")
if [ "$W" -ge 3840 ]; then
  ffmpeg -y -i "$IN" -vf "scale=3840:2160:flags=lanczos" \
    -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p -r 30 \
    -c:a aac -b:a 192k -movflags +faststart "$OUT/${NAME}_4k.mp4"
fi

# 9:16 vertical: blurred background + centered 16:9 video (first 60 s)
ffmpeg -y -t 60 -i "$IN" -filter_complex \
 "[0:v]scale=1080:1920:force_original_aspect_ratio=increase,crop=1080:1920,boxblur=20[bg];\
  [0:v]scale=1080:-2[fg];[bg][fg]overlay=(W-w)/2:(H-h)/2" \
  -c:v libx264 -crf 20 -pix_fmt yuv420p -c:a aac -b:a 160k \
  -movflags +faststart "$OUT/${NAME}_vertical.mp4"
echo "Done: $OUT"
