---
name: memory
description: Write and consolidate the assistant's long-term memory. Use when the home assistant learns a durable fact about a person, client, place or recurring topic, when the person says "remember this", "note that" or "forget that", at end of day for the daily log, and for the weekly consolidation on Mondays.
---

# Memory: write and consolidate

Layers and homes are in Standard section 12. The home assistant is the writer; project chats put facts in their journal entries.

## Write a fact

1. **Find its home.** One file per person, client, place or recurring topic under `Assistant/memory/` (`people/`, `clients/`, `places/`, `topics/`), listed in `memory/index.md`. If none fits, create one and add it to the index.
2. **Write it dated, with its source:** `- 2026-11-17 · Approves every press release before it goes out (email, Nov 12).`
3. **Replace in place.** If it updates an older fact, change that line and move the old one to the file's "History" section with its date.
4. **Check the other homes.** If `ABOUT-ME.md`, `PROJECTS.md` or a Command Center states the same fact differently, correct the wrong one, or ask the person which is true.
5. **Confidential** facts stay in a `Confidential` section of the file and never feed anything public or another project.
6. **Never** store secrets, passwords, card numbers or health detail beyond what the person asks you to keep.

When the person says "remember this", confirm in one line where it went. When they say "forget that", remove it and say where from.

## Daily log

At end of day and in the nightly check: `memory/log/YYYY-MM-DD.md`, appended, of what happened, what was decided, what moved, in short lines. Facts only.

## Weekly consolidation

On Mondays, before the weekly review (in the morning briefing, or a scheduled task):
1. Read the week's daily logs.
2. Move each durable fact into its long-term file (steps above).
3. Rebuild `memory/index.md`: one line per file with its last-changed date.
4. List the contradictions you couldn't settle for the Monday review, and bring them to the person one at a time.

Built-in Claude memory is a helper. When it disagrees with the files, the files win; tell the person so they can correct it in Claude's settings.
