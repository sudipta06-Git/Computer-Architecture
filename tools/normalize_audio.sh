#!/usr/bin/env bash
# Usage: ./tools/normalize_audio.sh voice.wav voice_norm.wav  (target -16 LUFS)
set -euo pipefail
ffmpeg -y -i "$1" -af loudnorm=I=-16:TP=-1.5:LRA=11 "$2"
