# Janet starter

A personal assistant system for Claude: one assistant that runs your days, your inbox and every project you have, built on Claude's own apps and a rulebook shipped as a plugin. You name the assistant. Everything about you lives in your own Google Drive, in a folder called `Assistant`.

## What's here

```
.claude-plugin/marketplace.json     the marketplace (one plugin: assistant)
plugins/assistant/
  .claude-plugin/plugin.json        name and version
  CHANGELOG.md                      what changed in each version
  skills/
    setup/                          the setup interview: run it first ("set me up")
    standard/                       the rulebook: the one copy of the rules
    home/                           the home assistant's job, reach and authority
    start-chat/  finish-chat/       every project chat, and Claude Code sessions ("join <CODE>")
    fold-in/  schedule/  replan/    managing projects
    new-project/                    "we have a new project"
    client-communication/  editorial/
    memory/  good-morning/  inbox-zero/  nightly-check/
    dashboard/                      publishes the person's dashboard from their own account
    weekly-check/                   Monday: is everything working, has anything drifted
    cowork-guide/                   the exact click paths in the Claude desktop app
templates/dashboard.html            the dashboard page
scripts/check.sh                    run before every push
```

## Getting started

Start from the front page you were sent. It walks you through installing the Claude app, connecting Google, adding this plugin, and opening the chat where your assistant sets you up.

**Adding this plugin in the Claude desktop app:** **Customize** → **Plugins** → **Add** → **Add marketplace** → paste `johnfarkas/janet-starter` → under **Discover**, add **assistant** → turn on **Sync automatically**. The full click paths for everything in the app are in the `cowork-guide` skill.

**Your mail connector** lives in its own repository, `https://github.com/johnfarkas/janet-mail`. The setup interview tells you whether you need it, and hands the deploy to Claude Code.

## Rules for this repository

- **Rules only.** Nothing about any one person goes in here; that lives in each person's Assistant folder.
- **No secrets.**
- **Every change is a new version:** bump `version` in `plugins/assistant/.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json`, add a section to `CHANGELOG.md` with "What projects change", run `scripts/check.sh`, commit, push.
