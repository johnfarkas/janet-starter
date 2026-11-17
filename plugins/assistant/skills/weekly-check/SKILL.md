---
name: weekly-check
description: The weekly check of the whole system, run in the Monday morning briefing. Use on Mondays, when the person asks "is everything working", "health check", "what's drifted" or "anything new in Claude", after a Claude app update, and whenever a tool or scheduled task fails.
---

# Weekly check

Nothing should fail quietly, and nothing should drift. On Mondays, before the weekly review, run every check below, fix what's rule-based and reversible yourself, and bring the person the rest one at a time. Write the findings to `Assistant/weekly-check.md` (rewritten each week: the date, failures first with the actual error and the fix, then one line for everything that passed).

## 1. Is everything working?

Exercise each part; never mark one healthy without trying it.
- **Connectors:** each one in the mail plan and under "Other tools" in `ABOUT-ME.md` answers one small read (the mail connector: `list_mail_accounts` and a search in each mailbox; Gmail: one search; Google Calendar: the next seven days; Google Drive: find `HANDOFF.md`; Slack: the latest message in a channel they named).
- **Writing:** create, read back and delete a test file in `Assistant/notes/` through the linked folder.
- **Scheduled tasks:** `STATUS.md` was rewritten each night this week (its `as_of` line), and a briefing ran each weekday. A missing night usually means the Mac was asleep: say so, with the fix (Standard section 11).
- **The plugin:** the version in this plugin's `CHANGELOG.md` against the newest at https://github.com/johnfarkas/janet-starter/blob/main/plugins/assistant/CHANGELOG.md. If theirs is behind, give them the steps to check for updates (`assistant:cowork-guide`, "Plugin updates").
- **The dashboard:** if the person has it open in another tab, ask whether every panel shows data; a panel with an error goes to `assistant:dashboard`.

## 2. Has anything drifted?

- **Stamps:** every Command Center and schedule carries the current Standard version.
- **Size:** Command Centers over about 150 lines.
- **Silent projects:** active projects with no journal entry in seven days, and any with a milestone inside two weeks.
- **Local rules:** rule text written into a Command Center, a project's instructions or a pasted prompt. Each is a copy that will drift; propose moving it into the plugin or deleting it.
- **Contradictions:** the same fact stated differently in `ABOUT-ME.md`, `PROJECTS.md`, a Command Center, PRIORITIES, HANDOFF or memory (roles, dates, names). Settle each from the source, or ask.
- **Stale record:** HANDOFF or PRIORITIES older than two days; TASKS items past due with no note; dated notes older than a day.
- **Prompts:** every Cowork project has a matching block in `PROMPTS.md`.

## 3. Once a month: what's new in Claude

On the first Monday of the month, read what changed in Claude since the last check (Anthropic's release notes and the Help Center at support.claude.com). Sort each change three ways: something built in now replaces part of this system; a better way to do something; something this system relies on changed. Bring the person the most useful one, as one recommendation. Note the date of this review at the top of `weekly-check.md`.

In the briefing, give the machinery one line if everything passed, or lead with the first failure and its fix.
