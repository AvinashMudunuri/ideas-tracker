# Ideas Tracker

A structured system for capturing, synthesizing, and tracking ideas so you always have context when you pick them up.

## Workflow

```
Brain Dump → Synthesis → Tracker → Execution
```

### 1. Brain Dump (`ideas/`)
Raw thoughts, quick captures, rough concepts. No pressure to be organized.

**Create a new idea:**
```bash
cp templates/idea-template.md ideas/YYYY-MM-DD-your-idea-name.md
# Edit and save
```

### 2. Synthesis (`synthesis/`)
When an idea matures, synthesize it here. Connect dots, refine scope, identify blockers.

**Synthesize an idea:**
```bash
cp templates/synthesis-template.md synthesis/your-idea-name.md
# Reference the original idea(s)
# Add deeper analysis
```

### 3. Tracker (`TRACKER.md`)
Active work tracking. What's ready, what's in progress, what's blocked.

**Update tracker:**
- Edit `TRACKER.md` directly
- Move synthesized ideas into appropriate status columns

### 4. Execution
When you pick up an idea:
1. Check `TRACKER.md` for current status
2. Read the synthesis doc for context
3. Reference original brain dumps if needed
4. Update tracker as you progress

## Quick Commands

**New idea:**
```bash
./scripts/new-idea.sh "Your idea title"
```

**Synthesize idea:**
```bash
./scripts/synthesize.sh ideas/2026-07-04-some-idea.md
```

**View tracker:**
```bash
cat TRACKER.md
```

## Directory Structure

```
ideas/              # Raw brain dumps (dated)
synthesis/          # Refined, connected concepts
templates/          # Templates for consistency
scripts/            # Helper scripts
TRACKER.md          # Central tracking board
```
