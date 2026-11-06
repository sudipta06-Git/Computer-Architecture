# Computer Architecture: From Zero to Professional

A complete, open video-course project: **60 lessons across 8 modules**, taking a viewer with no prior knowledge to professional-level understanding of computer architecture.

This repository holds everything needed to *produce* the series: scripts, storyboards, quizzes, revision material, asset folders, render tooling and publishing checklists. Rendered videos are **not** stored in Git (see [Video files](#video-files)).

## Course modules
| # | Module |
|---|--------|---------|
| 1 | [Fundamentals](modules/module-01-fundamentals/) | 
| 2 | [Number Systems and Digital Logic](modules/module-02-number-systems-and-digital-logic/) | 
| 3 | [Central Processing Unit](modules/module-03-central-processing-unit/) | 
| 4 | [Memory Organization](modules/module-04-memory-organization/) | 
| 5 | [Computer Bus and Input/Output](modules/module-05-computer-bus-and-input-output/) | 
| 6 | [Processor Design](modules/module-06-processor-design/) | 
| 7 | [Advanced Computer Architecture](modules/module-07-advanced-computer-architecture/) | 
| 8 | [Practical and Professional Applications](modules/module-08-practical-and-professional-applications/) | 

Also: [Final project brief](project/final-project.md) · [Full outline](docs/COURSE_OUTLINE.md)

## Production standards
- 1920x1080 minimum (4K preferred), 16:9 for YouTube / Facebook
- 9:16 vertical cut-downs for Reels and Shorts
- Professional English voice-over, English subtitles (.srt) on every lesson
- Dark, clean visual theme with 3D hardware visualizations and animated diagrams
- Title, module number and topic name on every lesson
- Original visuals and narration; copyright-safe music only
- Quiz and revision after every module

Details: [docs/PRODUCTION_GUIDE.md](docs/PRODUCTION_GUIDE.md) · [docs/STYLE_GUIDE.md](docs/STYLE_GUIDE.md) · [docs/LICENSING.md](docs/LICENSING.md)

## Repository layout
```
.
├── modules/module-XX-name/
│   ├── README.md          # lesson list and status
│   ├── quiz.md            # module quiz + answer key
│   ├── revision.md        # revision notes and recap script
│   └── lessons/NN-topic/
│       ├── script.md      # narration + visuals timeline
│       ├── storyboard.md
│       ├── assets/        # source animations, diagrams, 3D scenes
│       ├── subtitles/     # .srt files
│       └── renders/       # local MP4 output (git-ignored)
├── project/               # final professional project
├── templates/             # reusable lesson / quiz / thumbnail templates
├── tools/                 # ffmpeg export + subtitle + status scripts
├── docs/                  # production, style, licensing, workflow guides
└── .github/               # issue templates and CI
```

## Quick start
```bash
git clone <your-repo-url>
cd computer-architecture-course
python3 tools/status.py                 # show progress across all lessons
./tools/export.sh path/to/master.mov modules/module-01-fundamentals/lessons/01-what-is-computer-architecture
```
Requires `ffmpeg` for export. Recommended authoring tools (all free / open source): Blender (3D), Manim (math/diagram animation), Inkscape, DaVinci Resolve or Kdenlive (editing), Audacity (audio).

## Video files
MP4s are large. Keep them out of Git and publish via YouTube/Facebook/Drive, or attach finished files to **GitHub Releases** (per module). `renders/` is git-ignored by default; enable Git LFS only if you really need versioned binaries.

## Workflow
`planned -> scripted -> storyboarded -> animated -> voiced -> edited -> published`
Update the `status:` field in each `script.md`; run `python3 tools/status.py` to see the dashboard.

## License
Code and tooling: MIT. Course text, scripts and original visuals: CC BY 4.0 (see [LICENSE](LICENSE)). Third-party assets keep their own licenses; track them in each lesson's assets.
