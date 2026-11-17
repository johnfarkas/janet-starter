# Changelog

## 1.1.0 (2026-11-17)

- Standard v1.1: section 11 names the dashboard and the file shapes it reads.
- `setup` Part 3, "Their other tools": every work tool they use (Slack or Teams, meeting notes, a CRM, project tools) is connected, tested and recorded during setup. Parts renumbered (0 to 9).
- New `dashboard` skill and `templates/dashboard.html`: a private page published from the person's own account that reads their Google Calendar and Assistant folder live through their connectors. Setup Part 9 runs it.

What projects change: nothing.

## 1.0.1 (2026-11-17)

- Every project is a Cowork project, made in the Cowork tab of the Claude desktop app (Standard section 3). `new-project`, `setup`, `home` and `start-chat` say Cowork throughout.
- `setup` Part 8 says the starter instructions pasted at the start are temporary and replaced by the full block.

What projects change: nothing.

## 1.0.0 (2026-11-17)

First version, built from the Janet Standard v3.3 (plugin 3.3.3).

- The Standard (v1.0): records as files in the person's `Assistant` folder in Google Drive; a linked folder first, dated notes through the Drive connector second.
- `setup`: the interview that builds a person's assistant, mail first (mail connector or forwarding, per mailbox), with every step led.
- `home`: the home assistant, including texts at the morning briefing and the sign-off.
- Claude Code sessions join a project with `join <CODE>` and report through the journal (Standard section 15).
- Morning briefing and nightly check run as scheduled tasks in the home project; the Mac must be awake.

What projects change: nothing (first version).
