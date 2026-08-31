# Waypoint

**Original Ideas:** [ideas/2026-08-31-waypoint-language-app.md](../ideas/2026-08-31-waypoint-language-app.md)  
**Date Synthesized:** 2026-08-31  
**Status:** Shipped → dedicated repo  
**Repo:** https://github.com/AvinashMudunuri/waypoint *(create & push — see below)*

## Problem Statement

Adult language learners get stuck in gamified apps that optimize for engagement, not fluency. They grind indefinitely without speaking practice, clear milestones, or connection to media they already enjoy.

## Proposed Solution

**Waypoint** — a phase-based learning coach:
1. Guides learners through finite phases with exit criteria
2. Tracks weekly routine (study + speaking days)
3. Lets users mine phrases from shows they watch
4. Shows realistic milestones instead of infinite XP
5. **Multi-language** — Korean first, then Japanese, German, and more

## Naming

| Layer | Name |
|-------|------|
| App (user-facing) | **Waypoint** |
| Tagline | Honest milestones on your language journey |
| GitHub repo | `waypoint` |
| Language modules | Korean, Japanese, German (inside the app) |

## What shipped (v0.1 — Korean module)

- 4-phase curriculum with task checklists
- Hangul quiz (chart + char↔sound)
- Drama phrase miner with Anki export
- Weekly routine tracker
- PWA (install on phone, offline)
- Milestone timeline

## Repo setup

```bash
# 1. Create empty repo on GitHub: AvinashMudunuri/waypoint

# 2. From ideas-tracker root:
chmod +x scripts/setup-waypoint-repo.sh
./scripts/setup-waypoint-repo.sh

# 3. Push to new repo:
cd ../waypoint
git push -u origin language-path-export:main
git remote remove upstream
```

Export branch: `language-path-export` on ideas-tracker contains the full app at root.

## Key Decisions

| Decision | Options | Choice | Rationale |
|----------|---------|--------|-----------|
| App name | Phase, Waypoint, Language Path | **Waypoint** | Milestone metaphor, scales multi-language, not generic |
| Repo | ideas-tracker, dedicated repo | **`waypoint`** | ideas-tracker is for brainstorming only |
| Architecture | One app per language, modules | **Language modules** | Shared shell, per-language curriculum + script quiz |

## Roadmap (in waypoint repo)

- [ ] Language picker UI
- [ ] Japanese module (hiragana, anime miner)
- [ ] German module
- [ ] Tutor booking reminders
- [ ] Cloud sync
