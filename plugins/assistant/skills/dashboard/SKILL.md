---
name: dashboard
description: Publish or update the person's dashboard, a private page in their own Claude account that reads their Google Calendar and the files in their Assistant folder live. Use at the end of setup, when the person says "make my dashboard", "update my dashboard", "my dashboard is broken" or asks for a page showing their day, and when ABOUT-ME.md's "Dashboard" section changes.
---

# The dashboard

A private page that shows the person's day: their calendar for the next two days, this week's priorities (`PRIORITIES.md`), each project's status (the json block at the end of `STATUS.md`), and their open tasks (`TASKS.md`). It also talks back: a **Done** button on each task and a **Leave a note** box each create a dated note in `Assistant/notes/`, which the next fold-in applies (the task ticked in `TASKS.md`, the note added to `NOTES.md`). It reads them live through the person's own Google Calendar and Google Drive connectors, every time they open it, so it is never out of date and needs no server.

**It has to be published from the person's own account.** A page reads the connectors of whoever published it. One shared by someone else can't reach the viewer's calendar.

## Publish it

1. **Get the template.** It's `templates/dashboard.html` in the janet-starter repository: https://raw.githubusercontent.com/johnfarkas/janet-starter/main/templates/dashboard.html. Fetch it into a working file.
2. **Fill in the settings** in its `CONFIG` block: `name` (their first name from `ABOUT-ME.md`), `folder` (`Assistant`). Leave the connector names as they are unless their Claude app shows Google Calendar or Google Drive under a different name.
3. **Shape it to what they asked for** under "Dashboard" in `ABOUT-ME.md`. Remove a panel they don't want. To add one (mail waiting, a Slack channel, meeting notes), read the connector tool's schema in this chat first and make one safe read to learn its result's shape; never guess. Keep each panel's own error message.
4. **Publish it as a private page with connector access**, declaring exactly the tools it calls:
   ```
   capabilities: {"mcp": {"servers": [
     {"server": "Google Calendar", "tools": ["list_events"]},
     {"server": "Google Drive", "tools": ["search_files", "read_file_content", "create_file"]}
   ]}}
   ```
   Add a server and its tools for every panel you added. Use the publishing tool that accepts capabilities. If this chat doesn't have one, hand it to the Code tab (Standard section 15) with this brief:
   ```
   Publish my dashboard. Follow the "Publish it" steps in the assistant:dashboard skill: the template is https://raw.githubusercontent.com/johnfarkas/janet-starter/main/templates/dashboard.html; my first name is <name>; my folder is Assistant.
   Done when: the dashboard link opens and shows my calendar.
   Then: paste the link in my setup chat.
   ```
5. **Lead them through the first open**, one step at a time:
   1. Open the link in the Claude app.
   2. Claude asks whether the page may use Google Calendar: click **Allow**. Then the same for Google Drive. The first note or Done click may ask once more, to let the page create files: **Allow**.
   3. They should see today's calendar and, once the files exist, priorities, projects and tasks. An empty projects panel before the first nightly check is expected.
   4. Pin it: ask whether they'd like it under **Pinned** in their sidebar; on their yes, pin it, or give them the steps in `assistant:cowork-guide`, "Artifacts and the dashboard".
6. **Record it:** the link under "Dashboard" in `ABOUT-ME.md`, and a "System changes" line in HANDOFF.

## When something's wrong

Each panel says what's wrong in plain words. The usual fixes:
- "Add Google Calendar / Google Drive": connect it (`assistant:cowork-guide`, "Connectors").
- "Needs your OK": click Refresh on the page and choose Allow.
- "No folder named Assistant": the folder was renamed or moved; fix the folder or the `folder` setting and publish again.
- A panel stays empty though the file has content: the file's shape changed. Read the file, compare it with what the panel expects (open tasks are `- [ ]` lines; the status is a fenced json block at the end of `STATUS.md`), and fix the file or the page.

To change the page, edit the working file and publish it again to the same page, so the link stays the same.
