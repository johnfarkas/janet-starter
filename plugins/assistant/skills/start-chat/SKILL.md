---
name: start-chat
description: Start a project chat. Use at the beginning of any chat in one of the person's client projects (a Cowork project whose instructions say "use the assistant plugin"), and when a Claude Code session joins a project, which the person starts with "join <CODE>" (for example "join ACM - fix the pricing page") or by pasting a Claude Code brief. Loads the rulebook, the project's Command Center and schedule, any open requests for Claude Code, and checks how this chat can write.
---

# Start a project chat

1. **Read the rulebook.** Load `assistant:standard`, and `ABOUT-ME.md` in the Assistant folder for who you work for.
2. **Know the project.** The code comes from the project's instructions, from the person, or from their `join <CODE>` line. In `Assistant/projects/<CODE>/`, read:
   - `command-center.md`
   - `schedule.md`, if there is one
   - `canon.md`, before writing anything that will be published or sent
   - journal entries newer than the Command Center's last changelog line, so you see what's reported but not yet folded in
3. **Check how you can write** (Standard section 6): a linked folder, the Google Docs/Sheets/Slides connectors, the Drive connector (read and create only), the Mac link (Mac apps only). Mention it only if it limits the task, in one line, with what you'll do instead.
4. **Flag what's off, briefly.** If the Command Center runs past about 150 lines, has no schedule, or disagrees with the journal, say so in one line for the next fold-in and carry on.
5. **Do the work.** One clear question per chat. Work across several projects belongs in the home project; say so. Code is fine here. When the next step would make the person do the work themselves (a login, a dashboard click, copying files, running something), or a fix keeps circling, say so in one line and give them the Claude Code brief from Standard section 15, ready to paste. Put the same brief on a `For Claude Code:` line in this chat's journal entry, and carry on with the rest here.

## In a Claude Code session

When the person types `join <CODE>: <task>` or pastes a brief, run steps 1–4, then:

6. **Check the folder.** The folder this session was opened on decides what it can touch; the code decides where it reports. If the task needs a folder the session doesn't have (often `Assistant/projects/<CODE>/`), ask the person to add that directory to the session.
7. **Find open requests.** In the journal, list every `For Claude Code:` line that no later entry closes with `Closes For Claude Code from …`. If one matches the task, work from it.
8. **Say in two lines** what you know (where the project stands, any open request) and what you'll do first. Then start.
9. **Journal each milestone** as you go: something deployed, a decision, a blocker, a step handed to the person. One short entry each, at the end of `journal.md`, heading `## <YYYY-MM-DD HH:MM> — <CODE> · <topic> (milestone)`, with only the lines from Standard section 10 that apply. Read it back.

At the end, run `assistant:finish-chat`.
