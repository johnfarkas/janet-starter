# Changelog

## 1.3.0 (2026-11-17)

- Standard v1.3, section 18: an optional Prospects pipeline (code PRO) for potential clients or deals, from the Janet Standard v3.4. New `prospects` skill: add, update, promote to a project on signing, park or lose. Kept as files in `projects/PRO/` (a table, one journal, a profile per prospect).
- `setup` asks whether they chase clients or deals they'd like tracked, and sets the pipeline up if so. `new-project` has a "From Prospects" path; the nightly check and the morning briefing report next steps due and stalled prospects.

What projects change: nothing.

## 1.2.0 (2026-11-17)

An audit against the system this kit was built from, and against the current Claude desktop app.

- New `cowork-guide`: the exact click paths in today's desktop app (both layouts, now that Chat and Cowork are merging), for projects, folders, instructions, tasks, scheduled tasks, connectors, plugins and updates, the Code tab and artifacts. Every skill that gives app steps uses it.
- New `weekly-check`, run in the Monday briefing: every connector, scheduled task and file tested, drift found (stamps, size, silent projects, local rules, contradictions), the plugin version checked, and monthly, what's new in Claude.
- Standard v1.2: every Cowork project attaches the whole Assistant folder; `PROMPTS.md` holds every block the person pastes; the weekly check is part of management.
- The dashboard talks back: **Done** on a task and **Leave a note** create dated notes that the fold-in applies.
- `good-morning`: an optional morning nudge; Slack drafts with a "Send it from Slack" link.
- `setup`: asks when the Mac is awake and sets scheduled tasks around it; tells the person to start fresh tasks during the long setup; builds `PROMPTS.md`; no project renaming needed.

What projects change: none of their files. Every Cowork project should attach the whole Assistant folder: the weekly check lists any that don't.

## 1.1.0 (2026-11-17)

- Standard v1.1: section 11 names the dashboard and the file shapes it reads.
- `setup` Part 3, "Their other tools": every work tool they use (Slack or Teams, meeting notes, a CRM, project tools) is connected, tested and recorded during setup. Parts renumbered (0 to 9).
- New `dashboard` skill and `templates/dashboard.html`: a private page published from the person's own account that reads their Google Calendar and Assistant folder live through their connectors. Setup Part 9 runs it.

What projects change: nothing.

## 1.0.1 (2026-11-17)

- Every project is a Cowork project, made in the Cowork tab of the Claude desktop app (Standard section 3). `new-project`, `setup`, `home` and `start-chat` say Cowork throughout.
- `setup` Part 8 says the starter instructions pasted at the start are temporary and replaced by the full block.

What projects change: nothing.

## 1.0.0 (2026-11-17)

First version, built from the Janet Standard v3.3 (plugin 3.3.3).

- The Standard (v1.0): records as files in the person's `Assistant` folder in Google Drive; a linked folder first, dated notes through the Drive connector second.
- `setup`: the interview that builds a person's assistant, mail first (mail connector or forwarding, per mailbox), with every step led.
- `home`: the home assistant, including texts at the morning briefing and the sign-off.
- Claude Code sessions join a project with `join <CODE>` and report through the journal (Standard section 15).
- Morning briefing and nightly check run as scheduled tasks in the home project; the Mac must be awake.

What projects change: nothing (first version).
