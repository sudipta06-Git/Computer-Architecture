# Computer Architecture: 

![image alt](https://github.com/sudipta06-Git/Computer-Architecture/blob/main/diagram-2.png)
Diagram view: if you consider as a course type

## Modules
| 1 | [Fundamentals](modules/module-01-fundamentals/) | 
| 2 | [Number Systems and Digital Logic](modules/module-02-number-systems-and-digital-logic/) | 
| 3 | [Central Processing Unit](modules/module-03-central-processing-unit/) | 
| 4 | [Memory Organization](modules/module-04-memory-organization/) | 
| 5 | [Computer Bus and Input/Output](modules/module-05-computer-bus-and-input-output/) | 
| 6 | [Processor Design](modules/module-06-processor-design/) | 
| 7 | [Advanced Computer Architecture](modules/module-07-advanced-computer-architecture/) | 
| 8 | [Practical and Professional Applications](modules/module-08-practical-and-professional-applications/) | 

Also: [Final project brief](project/final-project.md) · [Full outline](docs/COURSE_OUTLINE.md)

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


## Workflow
`planned -> scripted -> storyboarded -> animated -> voiced -> edited -> published`
Update the `status:` field in each `script.md`; run `python3 tools/status.py` to see the dashboard.

## License
Code and tooling: MIT. Course text, scripts and original visuals: CC BY 4.0 (see [LICENSE](LICENSE)). Third-party assets keep their own licenses; track them in each lesson's assets.
