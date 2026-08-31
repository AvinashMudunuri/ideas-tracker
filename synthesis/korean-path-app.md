# Korean Path App

**Original Ideas:** [ideas/2026-08-31-korean-path-learning-app.md](../ideas/2026-08-31-korean-path-learning-app.md)  
**Date Synthesized:** 2026-08-31  
**Status:** In Progress

## Problem Statement

Adult Korean learners (especially K-drama fans) get stuck in gamified apps that optimize for engagement, not fluency. They grind indefinitely without speaking practice, clear milestones, or connection to the media they already enjoy.

## Proposed Solution

A phase-based learning coach web app that:
1. Guides learners through 4 finite phases with exit criteria
2. Tracks weekly routine (study + speaking days)
3. Lets users mine phrases from K-dramas they watch
4. Shows realistic milestones instead of infinite XP

## Scope

**In Scope (MVP):**
- 4-phase curriculum with task checklists
- Progress dashboard with phase completion %
- Weekly routine tracker
- Drama phrase journal (localStorage)
- Resource links to free YouTube courses
- Milestone timeline

**Out of Scope (v1):**
- User accounts / cloud sync
- Built-in video lessons
- Anki integration
- Tutor booking
- Other languages

## Key Decisions

| Decision | Options | Choice | Rationale |
|----------|---------|--------|-----------|
| Platform | Mobile native, PWA, Web | Web (Vite + React) | Fastest to ship, works everywhere |
| Data | Backend, localStorage | localStorage | No auth needed for MVP |
| Content | Build lessons, curate links | Curate + structure | Leverage free TTMIK/YouTube |
| Design | Gamified, minimal coach | Minimal coach | Matches anti-Duolingo positioning |

## Success Criteria

- User can see current phase and what's left to graduate
- User can log drama phrases and review them
- User can check off weekly routine tasks
- App feels finite — clear "you finished Phase 1" moments

## Context for Execution

### Technical Context
- Vite + React + TypeScript + Tailwind CSS
- App lives in `korean-path/` subdirectory

### Product Context
- Target user: 40-year-old K-drama fan, beginner Korean
- Core differentiator: phases with exit criteria, not endless levels
