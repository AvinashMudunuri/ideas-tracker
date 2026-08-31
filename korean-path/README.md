# Korean Path

A phase-based Korean learning coach — the opposite of endless Duolingo grinding.

## Philosophy

- **4 finite phases** with clear exit criteria (not infinite levels)
- **Weekly routine** with speaking days built in from week 3
- **Drama phrase miner** — turn K-drama watching into real study
- **Honest milestones** — realistic timelines for adult learners

## Quick Start

```bash
cd korean-path
npm install
npm run dev
```

Open http://localhost:5173

## Features

| Tab | What it does |
|-----|-------------|
| **Home** | Current phase progress, stats, today's focus |
| **Phases** | 4-phase curriculum with checkable tasks + resource links |
| **Routine** | Weekly study/speaking/drama schedule tracker |
| **Drama** | Capture Korean phrases from shows you watch |
| **Hangul** | Interactive alphabet chart + quiz (char↔sound) |
| **Goals** | Realistic milestone timeline |

Progress is saved in your browser (localStorage). No account needed.

### PWA — Install on your phone

The app is a Progressive Web App. On mobile:
- **Android (Chrome):** Tap "Install" when prompted, or Menu → "Add to Home screen"
- **iPhone (Safari):** Share → "Add to Home Screen"

Works offline after first load.

### Anki export

In the Drama tab, tap **Export for Anki** to download a `.txt` file. In Anki:
1. File → Import
2. Select the downloaded file
3. Deck: "Korean Path Drama Phrases"
4. Fields map automatically (Front = Korean, Back = English, Tags = show name)

## Tech Stack

- Vite + React + TypeScript
- Tailwind CSS v4
- localStorage for persistence

## Curriculum Sources

This app structures and tracks your learning — the actual lessons come from free resources:

- [GO! Billy Korean](https://www.youtube.com/c/GoBillyKorean) — Hangul
- [Talk To Me In Korean](https://talktomeinkorean.com/) — Grammar
- [Anki](https://apps.ankiweb.net/) — Vocabulary
- [Papago](https://papago.naver.com/) — Translation
- [iTalki](https://www.italki.com/) — Speaking practice
