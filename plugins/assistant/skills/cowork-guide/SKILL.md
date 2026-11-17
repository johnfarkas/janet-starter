---
name: cowork-guide
description: The exact click paths in the Claude desktop app for Mac, for a person who has never used Cowork. Use whenever you give the person steps in the app (creating a project, attaching a folder, instructions, starting a task, scheduled tasks, connectors, plugins and updates, the Code tab, artifacts and pinning), and whenever another assistant skill says to use the Cowork guide.
---

# Cowork guide

*Checked against Anthropic's Help Center and docs, Nov 17, 2026. The app changes often: if what the person sees differs from a step here, believe their screen, find the closest match with them, and note the difference in `HANDOFF.md` under "System changes" so the weekly check can propose an update to this guide.*

Give these as numbered steps, one action each, with what they should see, and wait for "done". Use the labels in **bold** exactly.

## Which layout they have

Claude is rolling out a new layout that merges Chat and Cowork. Ask them to look at the message box on the home screen:
- **They see separate "Chat" and "Cowork" options: the classic layout.** They choose **Cowork** before starting work.
- **They don't: the new layout.** Every message they send from home or from a project is already a Cowork task.

Cowork is on the Pro, Max, Ultra, Team and Enterprise plans. The **Code** tab is separate in both layouts.

## Create a project

1. In the left sidebar, find **Projects** and click **+**.
2. Choose **Use an existing folder**, and pick the folder (for the home project, `Google Drive → My Drive → Assistant`). For a client project, choose **Start from scratch** and attach folders in step 4.
3. Type the project's name.
4. Paste the instructions block into **Instructions**.
5. Click **Create**.

They should see the project's page, with **Instructions**, **Scheduled tasks**, **Context** and **Memory** sections.

**Name it right the first time.** The home project takes the assistant's name; a client project takes "<Client> - <CODE>". Renaming a project isn't confirmed in the current app, so avoid needing it.

**Attach a folder to an existing project:** on the project's page, add it under **Context**, or drag the folder from Finder onto the project. Every project attaches the whole `Assistant` folder (Standard section 6).

**Change a project's instructions later:** open the project and edit its **Instructions** section. Keep `PROMPTS.md` in step.

If macOS asks whether Claude may access files in Google Drive, they click **Allow**. If Claude refuses a folder as a "protected location", pick the `Assistant` folder itself, never the top of Google Drive.

## Start a task in a project

Open the project and type in its message box. A message sent from a project's page starts a Cowork task in that project. The new layout calls it **New chat**; the classic layout's button may say "New task". Either works. Chats and tasks share one **Recents** list in the sidebar.

## Scheduled tasks

1. Click **Scheduled** in the left sidebar.
2. Click **New task** (upper right).
3. Choose **Set up manually**.
4. In **Create scheduled task**: a name ("Morning briefing"), the prompt (from `PROMPTS.md`), the frequency (**Weekdays** or **Daily**) and time, and the folder: the `Assistant` folder.
5. Click **Save**.

Choosing a folder turns on **Require this computer**: the task runs only while the Mac is awake and the Claude app is open. That's needed here, because the tasks write to the Assistant folder. Edit, pause, delete or **Run now** from the **Scheduled** page. Another way: describe the task and how often in a chat in the home project, then click **Schedule** on the proposal.

## Connectors

1. Click **Customize** in the left sidebar.
2. Click **Connectors**.
3. Click **Discover** and type the tool's name in **Search connectors**.
4. Click the connector, then **Connect to Claude**.
5. Sign in on the page that opens and approve access.

It shows under **Your connectors** as **Connected**. Connectors can be switched on or off for one task with **+** in the message box → **Connectors**.

**A custom connector by its address** (their own mail connector): **Customize** → **Connectors** → **Add** → **Add custom connector**. Type the name ("My mail") and the address, click **Continue**, then **Add**, then **Connect**, and sign in.

## Plugins

**Add the starter plugin:**
1. Click **Customize** in the left sidebar.
2. Click **Plugins**.
3. Click **Add**, then **Add marketplace**.
4. Paste `johnfarkas/janet-starter` and confirm.
5. Under **Discover**, find **assistant** and click **Add** (some versions say **Install**).
6. Turn on **Sync automatically** for the marketplace.

The plugin reaches Cowork from the next task they start, and the Code tab from its next session.

**Plugin updates:** **Customize** → **Plugins** → the marketplace → **Check for updates**. Do this whenever the weekly check says the plugin is behind; automatic sync has been known to lag.

## The Code tab

1. Click the **Code** tab.
2. Click **+ New** in the sidebar (or press Cmd+N).
3. Under the prompt box, set the environment to **Local**, and use the folder control beside it to pick the folder the work lives in.
4. Paste the brief, or type `join <CODE>: <task>`.

**Add another folder to a running session:** **+** next to the prompt box → **Add folder**.

## Artifacts and the dashboard

Pages Claude makes (the dashboard included) are private until shared with **Share**. Find them again under **Artifacts** in the left sidebar (it has a **Filter by** control). Pin one from the artifact itself or from the **Artifacts** gallery, and it appears under **Pinned** in the sidebar.
