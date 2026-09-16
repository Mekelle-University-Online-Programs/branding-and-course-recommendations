# Sharing Guidance

## Audiences and What They Receive

| Audience | Document | Format | Channel |
|---|---|---|---|
| Leadership (Dean, e-Learning Director) | Full PDF + Executive Summary | PDF | Email + GitHub Projects |
| Project Manager | Full PDF + this sharing guidance | PDF + MD | GitHub repo + weekly meeting |
| Instructional Designers | Full PDF + QA rubric + formatting guidelines | PDF | GitHub repo + ID meeting |
| Course Authors | Formatting guidelines + CSS cheatsheet + video guide | PDF + MD | GitHub repo + author training |
| Open edX Experts | Full PDF + Teak notes + CSS listing | PDF + CSS | GitHub repo + technical meeting |
| Multimedia Team | Video findings section + captions checklist | PDF excerpt | GitHub repo + multimedia meeting |
| QA / Accessibility Reviewers | QA rubric + accessibility checklist | PDF | GitHub repo + QA meeting |
| ICT Support | Teak notes + GitHub workflow + access matrix | PDF + MD | GitHub repo + ICT meeting |
| ASU / e-SHE / MoE partners | Full PDF + Executive Summary | PDF | Email via program coordinator |

## What Not to Share

- Raw `assets.json` (contains cross-course metadata)
- Raw `drafts/` folder (contains unpublished content)
- Raw `policy.json` (contains internal settings)
- Any learner data or discussion content
- The `e-she-learning-communities-faculty-raw-*.zip`

## Publishing the PDF

1. Run `make` in the repo.
2. Output: `main.pdf`.
3. Upload to GitHub Releases with tag `v1.0`.
4. Share the release URL.

## Publishing the Video

1. Upload unlisted to YouTube per roadmap.
2. Add captions (English; Amharic optional).
3. Add transcript as `.srt` and `.vtt` in `assets/`.
4. Add the link to this repo's `README.md`.