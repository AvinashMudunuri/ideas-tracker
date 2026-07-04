# Ideas Tracker Skill

**Activation:** Use when the user wants to capture ideas, synthesize concepts, update tracking status, or retrieve context for existing ideas.

**Triggers:**
- "capture this idea"
- "new idea about X"
- "brain dump"
- "synthesize [idea/these ideas]"
- "what's the status of X"
- "update tracker"
- "show me ideas about X"
- "what was I thinking about X"

---

## Purpose

Manage the full lifecycle of ideas: capture → synthesis → tracking → context retrieval.

---

## Workflow

### 1. Capture New Idea

When user wants to brain dump a new idea:

**Steps:**
1. Extract the core idea from the conversation
2. Ask for a concise title if not clear
3. Create dated file: `ideas/YYYY-MM-DD-slug.md`
4. Use template structure:
   - Core idea (1-2 sentences)
   - Why now? (trigger/problem)
   - Initial thoughts (brain dump)
   - Questions/unknowns
   - Related ideas (check existing ideas/)
   - Next steps
5. Commit with message: `docs: capture idea - [title]`
6. Confirm capture and suggest synthesis if idea is mature

**Template:**
```markdown
# [Title]

**Date:** YYYY-MM-DD  
**Status:** Raw Brain Dump

## The Core Idea
[One or two sentences]

## Why Now?
[Trigger/problem/context]

## Initial Thoughts
[Brain dump - bullets or paragraphs]

## Questions / Unknowns
- 

## Related Ideas
- [Links to related ideas/ or synthesis/ files]

## Next Steps
- 
```

---

### 2. Synthesize Ideas

When user wants to refine/connect ideas:

**Steps:**
1. Identify which idea files to synthesize (ask if unclear)
2. Read the original idea files
3. Ask for synthesis title if not obvious
4. Create `synthesis/slug.md` with:
   - Problem statement (clear, specific)
   - Proposed solution (high-level approach)
   - Scope (in/out)
   - Key decisions table
   - Dependencies/blockers
   - Success criteria
   - Context for execution (technical, product, why it matters)
   - Open questions
   - Links back to original ideas
5. Prompt user to update TRACKER.md
6. Commit with message: `docs: synthesize - [title]`

**Template:**
```markdown
# [Title]

**Original Ideas:** [Links]  
**Date Synthesized:** YYYY-MM-DD  
**Status:** Backlog

## Problem Statement
[Specific problem, who has it]

## Proposed Solution
[High-level approach]

## Scope
**In Scope:**
- 

**Out of Scope:**
- 

## Key Decisions
| Decision | Options | Choice | Rationale |
|----------|---------|--------|-----------|
|          |         |        |           |

## Dependencies / Blockers
- 

## Success Criteria
- 

## Context for Execution

### Technical Context
- 

### Product Context
- 

### Why This Matters
- 

## Open Questions
- 

## Related
- **Ideas:** [Links]
- **Other Synthesis:** [Links]
```

---

### 3. Update Tracker

When user wants to change idea status:

**Steps:**
1. Read current TRACKER.md
2. Identify the idea/synthesis to update
3. Move entry between sections:
   - 🎯 Ready to Start
   - 🚧 In Progress
   - 🧊 Blocked / On Hold
   - ✅ Completed
   - 🗃️ Backlog
   - 💡 Raw Ideas
4. Add entry to Update Log section with date and change
5. Update status in synthesis file if applicable
6. Commit with message: `docs: update tracker - [change description]`

---

### 4. Retrieve Context

When user asks about existing ideas:

**Steps:**
1. Search ideas/ and synthesis/ for relevant files:
   - Use Grep for keywords
   - Check filenames
   - Look at TRACKER.md
2. Read relevant files
3. Summarize:
   - Current status
   - Core concept
   - Key blockers/questions
   - Next steps
   - Related ideas
4. Offer to update status or synthesize if appropriate

---

### 5. Search & Browse

When user wants to explore ideas:

**Common queries:**
- "What ideas do I have about X?"
- "Show me blocked ideas"
- "What's ready to start?"

**Steps:**
1. For topic search: Grep through ideas/ and synthesis/
2. For status search: Parse TRACKER.md
3. Present organized list with:
   - Title
   - Status
   - Link to file
   - One-line summary
4. Offer to dive deeper into any specific idea

---

## Anti-patterns

**Don't:**
- Create ideas without user input
- Synthesize before gathering proper context from original ideas
- Update tracker without reading current state
- Skip linking between ideas and synthesis docs
- Forget to commit changes
- Overwrite existing ideas without confirmation

**Do:**
- Ask clarifying questions if user intent is unclear
- Check for related existing ideas before creating new ones
- Preserve raw brain dumps even after synthesis
- Keep synthesis docs updated as decisions are made
- Log all tracker changes
- Suggest next steps after each action

---

## Integration Points

**After capturing an idea:**
- Check if it connects to existing ideas
- Suggest synthesis if multiple related ideas exist
- Prompt adding to tracker if it's mature enough

**After synthesis:**
- Always prompt to update TRACKER.md
- Suggest which status category fits best
- Offer to create execution plan if Ready to Start

**When retrieving context:**
- Check tracker for current status
- Surface blockers prominently
- Highlight related ideas for cross-pollination

---

## Examples

### Example 1: Quick Capture
**User:** "Capture this idea: build a personal knowledge graph to visualize connections between my notes"

**Agent:**
1. Create `ideas/2026-07-04-personal-knowledge-graph.md`
2. Fill template with user's concept
3. Ask follow-up: "What triggered this? Any related tools you're considering?"
4. Add initial thoughts from conversation
5. Commit and confirm
6. Note: "This connects to your ideas tracker system - consider synthesizing them together"

### Example 2: Synthesis
**User:** "Synthesize my graph idea with the tracker"

**Agent:**
1. Read `ideas/2026-07-04-personal-knowledge-graph.md` and tracker docs
2. Create `synthesis/integrated-knowledge-system.md`
3. Define problem: "Context loss between projects and ideas"
4. Propose solution: "Unified system with visual graph + structured tracking"
5. Scope: what's in/out
6. Ask: "Should I add this to TRACKER.md under 'Backlog' or 'Ready to Start'?"

### Example 3: Status Update
**User:** "I'm starting work on the knowledge graph"

**Agent:**
1. Read TRACKER.md
2. Find "Integrated Knowledge System" in Backlog
3. Move to "🚧 In Progress"
4. Add log entry: "2026-07-04: Moved to In Progress - starting implementation"
5. Commit change
6. Ask: "Want me to pull up the synthesis doc for context?"

### Example 4: Context Retrieval
**User:** "What was I thinking about knowledge graphs?"

**Agent:**
1. Grep for "knowledge graph" in ideas/ and synthesis/
2. Find related files
3. Summarize:
   - Original idea: visual graph for notes (Raw)
   - Synthesis: integrated system (In Progress)
   - Key decision: start with markdown links, add viz later
   - Blocker: need to pick graph library
4. "You're currently working on this. Want me to research graph libraries?"

---

## File Structure Reference

```
ideas/                           # Raw brain dumps
├── YYYY-MM-DD-idea-name.md     # Dated, slugified
├── ...

synthesis/                       # Refined concepts
├── concept-name.md             # Slugified, not dated
├── ...

TRACKER.md                       # Central status board

templates/                       # For reference
├── idea-template.md
└── synthesis-template.md
```

---

## Success Criteria

**This skill succeeds when:**
- Ideas are captured quickly with minimal friction
- Context is preserved for future pickup
- Related ideas are connected through synthesis
- Status is always current in TRACKER.md
- Users can retrieve context without reading full docs
- The system grows organically without becoming overwhelming
