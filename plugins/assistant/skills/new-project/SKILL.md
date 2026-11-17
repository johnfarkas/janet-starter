---
name: new-project
description: Set up a new project from one sentence. Use when the person says "we have a new project", "new client", "set up a project for", or names an engagement that has no project code yet, and from assistant:setup for each project the person lists.
---

# New project

The home assistant runs this.

1. **Ask, one question at a time**, recommendation first where you have one:
   1. Name and a three-letter code (suggest one; check `PROJECTS.md` for clashes).
   2. The client and the person's role (the exact wording they want used).
   3. The specialist expertise this project's chats need.
   4. Where the scope of work or contract is, and where the working files live.
   5. Key dates.
   6. The people, with roles.
   7. Whether anything about it is confidential, and what.
2. **Create the record** in `Assistant/projects/<CODE>/`: `command-center.md` and `schedule.md` (both with the stamp line, Standard sections 7 and 9), `canon.md`, `archive.md`, `journal.md`, and an empty `notes/` folder.
3. **Build the schedule** from the contract (`assistant:schedule`) and draft the Canon. Show the person both.
4. **Register it:** a card in `PROJECTS.md` (tier, status, the person's role, where working files live, and a `Confidential:` line if anything is), and memory files for the client and its people (`assistant:memory`).
5. **Write the project instructions** from the template at the end of `assistant:standard`, filled in. Check before you hand it over: both paragraphs; the second names `assistant:start-chat`, `assistant:finish-chat` and the code; the first holds no dates or status.

   Then give the person numbered steps, one action each, each saying what they should see, with the block to copy:
   1. In the Claude desktop app, open the **Cowork** tab and create a new project named "<Client> - <CODE>".
   2. Add the folder `Assistant/projects/<CODE>` to the project, and the working-files folder if there is one.
   3. Paste the project instructions into the project's instructions and save.
   4. Start a new task in the project and type "hi, where do things stand?" It should load `assistant:start-chat` and answer from the new Command Center.

   Wait for "done" after each.
6. **Record it:** a HANDOFF line and the journal's first entry. The nightly check picks the project up the next night.
