---
name: fold-in
description: The home assistant's fold-in and trim. Use daily (in the morning, in the nightly check, or when the person says "update" or "fold in"), whenever dated notes are waiting, and when a project's Command Center has drifted from its journal or grown past about 150 lines. Applies new journal entries to each Command Center and schedule, trims by rule, and updates version stamps.
---

# Fold-in and trim

The home assistant, or a scheduled task acting for it, is the single writer of Command Centers and schedules (Standard section 8).

## 1. Fold in dated notes

Look in `Assistant/notes/` and in each `projects/<CODE>/notes/` for `note *.md`. For each:
- a project journal entry goes to the end of that project's `journal.md`, unchanged;
- a change to one of your own files is applied to the file it names;
- then the note moves into a `_processed` folder beside it.

## 2. Fold each project's new entries

For each project with journal entries newer than its Command Center's last changelog line:
1. Apply every "For the Command Center" line: rewrite the line in place, add what's new, close what's done.
2. Apply every "Schedule" line to `schedule.md` (`assistant:schedule`), and recompute slack for the milestones after it.
3. New tasks for the person go to `TASKS.md`; decisions for them go to HANDOFF.
4. Canon proposals wait for the person. Ask one at a time; apply each one they approve, with a changelog line.
5. Leave `For Claude Code` lines in the journal; they stay open until a Claude Code session closes them.
6. Add one changelog line per fold-in: `- **<Mon D> (fold-in):** <what changed>, from entries <times>.`

If two entries disagree, or an entry disagrees with the scope of work, don't pick one. Put the question to the person and note it under blockers.

## 3. Trim by rule

After every edit, make the moves the section limits call for (Standard section 11): changelog lines past the last 10, decisions older than two weeks, resolved blockers, and a "This week" from an earlier week each move to the top of `archive.md`, dated. Trimming moves lines; it never changes a fact. If the Command Center is still over about 150 lines, shorten wording that repeats elsewhere, and list the rest for the person.

## 4. Version stamps

Read the plugin's `CHANGELOG.md`. For a Command Center or schedule stamped with an older version, apply each newer version's "What projects change" items in order, then rewrite the stamp line with the new version and today's date.

## 5. Check and report

Read back each file you changed. Report in one short list: per project, what changed, and anything that needs the person. A project whose journal has been silent for a week while it has a milestone inside two weeks goes on that list.
