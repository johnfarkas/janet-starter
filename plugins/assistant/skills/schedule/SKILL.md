---
name: schedule
description: Build and keep a project schedule. Use when a project needs its schedule built from a scope of work or contract, when a journal entry moves a milestone date, when the person asks "are we on track", "what's the timeline" or "what's slipping" for a project, and during the Monday review and the nightly check.
---

# Schedule upkeep

Each project has one schedule, `Assistant/projects/<CODE>/schedule.md`, the single source for its timeline (Standard section 9). The home assistant writes it.

## Build one

1. Read the scope of work or contract (the Command Center says where it is). If there's none, ask where it is.
2. List every milestone and deliverable with its date. Add the dates that follow from them: reviews, approvals, lead times, travel, holidays the person's calendars show.
3. For each: owner (a person, never "team"), what it depends on, status, slack.
4. Write it in the format in Standard section 9, with the stamp line and the source line.
5. Show the person the table and the three tightest milestones. Ask about any owner or date you had to infer, one at a time.

## Keep it true

- Apply each journal "Schedule" line: change the date, record why in the changelog, recompute slack for everything that depends on it.
- **Status rules:** done when the journal or mail confirms it; slipped when its date has passed without done; at risk when slack is two working days or less, the owner hasn't started inside a week of the date, or a dependency is at risk or slipped.
- A milestone with no owner, or an owner who hasn't confirmed the date, is at risk until it's fixed.
- Every change to at risk or slipped goes to the person the same day with a recovery step (`assistant:replan`).

## Answer "are we on track"

Next milestone and its slack, anything at risk or slipped with the reason and the recovery step, and the final deadline. Three lines when it's on track.
