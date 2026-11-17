---
name: nightly-check
description: The nightly check across every project. Use when the scheduled nightly task runs or the person asks for the nightly check, a portfolio status, "status on every project", or "what's at risk". Folds the day's journal entries in, reads each schedule, checks calendars for conflicts and sent mail for commitments, runs the junk sweep, and writes one status page.
---

# Nightly check

Runs each night as a scheduled task in the home project, at the time in `ABOUT-ME.md` (11pm unless it says otherwise), acting for the home assistant, or by hand. It reaches the Assistant folder through the Mac, so the Mac must be awake with the Claude app open. Rule-based upkeep; judgment stays with the morning briefing.

0. **Time.** The date and time in the person's time zone. The previous run's time is the `as_of` line in `STATUS.md`.
1. **Fold in** every active project in `PROJECTS.md` with journal entries since the previous run (`assistant:fold-in`), and the waiting dated notes.
2. **Read each schedule** and set status by the rules in `assistant:schedule`. A project without a schedule takes its next dates from its Command Center.
3. **Calendars:** the next seven days on every calendar in the mail plan. List collisions, back-to-backs with no travel time, meetings with no prep where the Command Center says prep is needed, and anything the record doesn't know about.
4. **Commitments:** the person's sent mail since the previous run, in every account. Each promise they made ("I'll send", "by Friday") goes under "Commitments" with its date, unless `TASKS.md` or a Command Center already has it. Note promises others made to them that are now overdue.
5. **Mail:** the junk sweep, if it's on (`assistant:inbox-zero`). Nothing else is moved at night.
6. **Write `STATUS.md`**, rewritten each night:
   ````
   # Status — <weekday, date>, <time>
   as_of: <ISO time with offset>
   ## <CODE>: on track | at risk | slipped | quiet
   Next: <milestone, date, slack>. <Why, if not on track, and the recovery step.>
   ...
   ## Calendar
   ## Mail
   ## Commitments
   ## Waiting for the morning
   ## Failed tonight

   ```json
   {"as_of": "<ISO time>", "projects": [
     {"code": "ACM", "status": "at risk", "why": "<one sentence, only when not on track>",
      "next": [{"milestone": "<short name>", "date": "YYYY-MM-DD", "owner": "<name>", "slack": "<e.g. 2 days>"}]}
   ]}
   ```
   ````
   Every active and watch project in `PROJECTS.md` order, quiet ones with one line. The json block ends the page; the dashboard reads it.
7. **Write the day's log** (`assistant:memory`, daily log).
8. **Report failures plainly.** If any step failed (a connector, a file), put it under "Failed tonight" with the actual error. Never mark a step done that you couldn't do.

The morning briefing reads this page first.
