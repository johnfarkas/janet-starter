---
name: finish-chat
description: Finish a project chat by writing its journal entry. Use before a chat in one of the person's client projects ends, when a Claude Code session that joined a project ("join <CODE>") finishes its task, when the person says "wrap up", "save where we are", "log this" or "we're done", when the chat is getting long, and after any chat that changed a date, owner, decision, status, blocker or Canon point.
---

# Finish a project chat

Project chats write only to the journal (Standard section 8). The home assistant changes the Command Center and schedule from what you write here.

1. **Decide if an entry is due.** One is due if this chat produced a deliverable, or learned or changed a date, owner, decision, status, blocker, task or Canon point. If none of that happened, skip it and say nothing needed logging.
2. **Write the entry** at the end of `Assistant/projects/<CODE>/journal.md`, in the format in Standard section 10. In "For the Command Center", quote the line to change and give the new wording, so the fold-in is mechanical. If this chat handed over a Claude Code brief, put it on a `For Claude Code:` line.
3. **Write it the way you can** (Standard section 6): the linked folder; otherwise a dated note in `projects/<CODE>/notes/` through the Drive connector, holding the same entry.
4. **Read it back.** Confirm the entry is in the journal or the note exists. Say in one line where it went.
5. **Hand over decisions.** If the entry has items for the person, ask the first one, with your recommendation.

Never rewrite an earlier journal entry, and never edit the Command Center, schedule or Canon from a project chat.

## In a Claude Code session

A session that joined a project has written milestone entries along the way. Its final entry:
- sums up the whole session, with the folder, the repository and the commit or deploy where it matters, and names its milestone entries in "Done" instead of repeating them
- adds `Closes For Claude Code from <heading>` under "Done" for each request it finished; a request only partly finished stays open, with what's left under "Waiting on"
- carries any durable fact about the person, a client or a place it learned, since Claude Code's own memory never reaches the Assistant folder

If the work changed the system itself (this plugin, the mail connector, a scheduled task), also add one line under HANDOFF's "System changes".
