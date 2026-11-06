# Production Guide

## Pipeline
1. **Script** - write `script.md` in simple English, assume zero prior knowledge. Cite sources.
2. **Storyboard** - plan every scene in `storyboard.md`.
3. **Visuals** - build 3D hardware scenes (Blender), diagrams and step-by-step animations (Manim / Blender / Inkscape).
4. **Voice-over** - record in a quiet room (48 kHz, 24-bit WAV), clean and normalise (-16 LUFS for online video).
5. **Edit** - assemble in DaVinci Resolve / Kdenlive; add title card, module number, topic name, lower-thirds, subtitles.
6. **Export** - `tools/export.sh` produces 16:9 1080p/4K and 9:16 cut-downs.
7. **QA** - run the checklist below, then publish.

## Technical specs
| Item | Spec |
|------|------|
| Master | 3840x2160 (preferred) or 1920x1080, 30 fps |
| Landscape | 16:9, H.264 MP4, AAC 192 kbps |
| Vertical | 9:16 (1080x1920), 30-60 s highlights per lesson |
| Audio | Voice -16 LUFS integrated, music at least 18 dB below voice |
| Subtitles | English .srt, max 2 lines, ~42 chars/line |
| Lesson length | 10-15 minutes recommended |

## Every lesson must include
- Title card with **Module number + topic name**
- Step-by-step animated demonstration
- Hardware diagrams / 3D internal structures where relevant
- At least one solved numeric or logic example (where applicable)
- Real-world application segment
- Recap with key takeaways

## QA checklist
- [ ] Technical accuracy reviewed against textbook / datasheet sources
- [ ] No concept skipped from the syllabus
- [ ] Labels readable at 720p and on mobile
- [ ] Subtitles synced and proofread
- [ ] Music license recorded in `docs/LICENSING.md` log
- [ ] Vertical cut-down exported
- [ ] Thumbnail made

## Suggested references for accuracy
- Hennessy & Patterson, *Computer Architecture: A Quantitative Approach*
- Patterson & Hennessy, *Computer Organization and Design*
- Mano, *Computer System Architecture*
- Stallings, *Computer Organization and Architecture*
- Vendor manuals (Intel SDM, AMD APM, Arm Architecture Reference Manual)
