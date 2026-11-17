---
name: good-morning
description: The home assistant's morning briefing. Use when the person opens a chat in their home project with "good morning", "gm", "morning", a greeting that starts the working day, or asks for a briefing, "what's on my plate", "catch me up" or "what did I miss", and when the scheduled morning task runs. On Mondays it includes the weekly review of every project.
---

# Good morning

Load `assistant:standard` (your manner is in section 2) and `assistant:home`. Gather everything first, then talk to the person like a colleague who's been watching the boards since before dawn.

## Gather, in one pass

0. **The nudge.** If "The day" in `ABOUT-ME.md` names something they want nudged each morning (a workout, a walk, a habit), check whether it's done where you can see it; if not, open the briefing with a short, warm nudge to do it first. Encourage; never scold.
1. **Time.** Exact date, weekday and time in the person's time zone (`ABOUT-ME.md`; run `TZ=<zone> date` when you have a shell).
2. **The record.** Read `HANDOFF.md`, `PRIORITIES.md`, `STATUS.md`, `TASKS.md` and `NOTES.md`. If `STATUS.md` is older than last night, say in one line that the nightly check didn't run (the Mac was asleep or the app closed) and do its fold-in now. Commitments and "Waiting" items on the status page go into TASKS and the right projects now.
3. **Notes.** Entries in `NOTES.md` without a `✓ read` mark are new. Mark each `✓ read <date>`, with a short reply where useful. Fold in waiting dated notes (`assistant:fold-in`, step 1).
4. **Calendar.** Today and the next 48 hours from every calendar in the mail plan, merged into one timeline. If a calendar is out of reach, one line says so.
5. **Messages in other tools.** Slack or Teams, if `ABOUT-ME.md` lists them: who's waiting on the person, mentions and direct messages since the last working day. Draft up to three replies; never send. Save Slack drafts with the Slack connector's draft tool (unsent, in their Slack Drafts), and under each put the channel link it returns as "Send it from Slack": the person sends from Slack itself. Slack allows one draft per channel; if one is already there, put the text in the briefing.
6. **Inbox.** The junk sweep if it's on (`assistant:inbox-zero`). Then sort the rest into one proposal for a single go (promotions to Trash, receipts and notices to Archive, real people starred). Count starred mail and note anyone waiting since yesterday.
7. **Texts**, if on (`assistant:home`, "Texts").

## Monday: the weekly review

Before the briefing on a Monday:
1. Run the weekly check (`assistant:weekly-check`) and the weekly memory consolidation (`assistant:memory`).
2. For each active project: where it stands in two sentences, the next milestone and its slack, risks with a recovery step (`assistant:replan` when a milestone is at risk), and decisions waiting on the person.
3. Rewrite `PRIORITIES.md` for the week and bring HANDOFF current.

In the briefing, give the top three projects a line each and say the rest are on track (or which aren't).

## Deliver

About a 30-second read, 150 to 200 words, conversational:
1. A greeting with the day. If something is urgent, lead with it.
2. Today's calendar and what needs prep; anything colliding.
3. Anything they left in `NOTES.md`.
4. Who's waiting on them (mail, texts, other tools); which replies are drafted and where.
5. Projects: one line for each that's at risk, slipped, or has a decision waiting. Quiet projects get no line.
6. Inbox: junk trashed, the one-go proposal, then starred to-dos.
7. The top two or three priorities.
8. One nudge they didn't ask for: a deadline coming, a follow-up due, something sitting too long.

End with an open door ("Where do you want to start?"). If the day is light, say so. Never fabricate; if you couldn't read something, say what.
