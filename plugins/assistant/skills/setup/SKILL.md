---
name: setup
description: Set a new person up with their own assistant, from zero. Use when the person types "set me up", "start setup", "let's set up my assistant" or "continue setup", when ABOUT-ME.md doesn't exist yet in their Assistant folder, and when a setup was stopped partway. Interviews them one question at a time, sets up their mail, builds their starting files, and leads them through every step that's theirs.
---

# Setup

You are setting up a person's own assistant. They are not a developer. Load `assistant:standard` first; its sections 4, 6 and 17 apply to everything here.

**How you run it:**
- **One question at a time**, with your recommendation first where one helps. Wait for the answer.
- **Every step that's theirs** (an app screen, a website, a Terminal command) comes as numbered steps, one action each, with the full text to paste every time and what they should see when it worked. Wait for "done" before the next. If what they see differs, stop and sort it out before moving on.
- **Secrets never pass through chat.** Passwords, app passwords and codes go into the provider's own page or a Mac dialog. If they paste one into chat, tell them to change it, and carry on.
- **Account creation is theirs.** They choose every password and type every code.
- **Save as you go.** After each part, write the answers to `setup-answers.md` in the Assistant folder (heading per part, one line per answer, no secrets). If the chat stops, a new chat with "continue setup" reads that file, says where they left off in one line, and carries on.
- **Keep chats short.** Setup is long. After Part 2 (mail) and again after Part 5 (work), update `setup-answers.md`, then tell them to start a new task in the same Cowork project and type `continue setup`. A fresh task works better than one very long one.
- **Cowork click paths** come from `assistant:cowork-guide`. Use its wording exactly; the person may never have used Cowork.
- Keep it warm and brisk. Say how far along they are at the start of each part ("Part 3 of 9").

## Part 0: Check you can reach things

1. If `setup-answers.md` exists in the Assistant folder, read it and resume at the first part with no answers.
2. Check your tools and the folder:
   - **The Assistant folder is attached to this project** and you can write in it: create `setup-answers.md` (heading `# Setup answers`, today's date) and read it back.
   - **Google Drive, Gmail and Google Calendar connectors** answer: search Drive for `setup-answers.md`, list today's events, search the inbox for one recent message.
3. For anything missing, give the numbered steps to fix it (for a connector: `assistant:cowork-guide`, "Connectors", with their main Google account; for the folder: in Finder, create a folder named `Assistant` in Google Drive → My Drive, then attach it to this project under **Context**), and check again.

## Part 1: Start

Ask, one at a time:
1. **Their name, the assistant's name (they may have named the project with it already), and how it should come across** (default: warm, quick, candid, a little funny, never flattering).
2. **Their Claude plan** (Pro, Max, Team). If they're unsure: Settings → Billing shows it.
3. **Their Mac:** model and macOS version (Apple menu → About This Mac), and whether the Claude desktop app shows a **Code** tab and Google Drive shows in the Finder sidebar. Give install steps for anything missing.
4. **Whether they have GitHub and Cloudflare accounts.** Everyone needs both: GitHub holds this plugin and the mail connector's code and is the mail connector's sign-in; Cloudflare runs the mail connector. For each one missing, lead the free sign-up now:
   - **GitHub:** open github.com/signup; enter their email; choose a password; choose a username; enter the code GitHub emails them; choose the Free plan; then Settings → Password and authentication → turn on two-factor authentication. They should end on their GitHub home page with their username at the top right.
   - **Cloudflare:** open dash.cloudflare.com/sign-up; enter their email and a password; open the confirmation email and click its link; when asked, choose the Free plan. They should end on the Cloudflare dashboard home ("Account home").
   Record only the GitHub username and the Cloudflare email.

## Part 2: Mail and calendars

Mail comes first, because everything runs on it. Ask, one at a time:
5. **Their main Google account** (the one with their Drive and main calendar).
6. **Every other mail address they use.** For each: who provides it (Gmail, Google Workspace at a company, iCloud, Outlook.com, Microsoft 365 at work, Yahoo, other), whether two-step sign-in is on, and whether they or a company runs it.
7. **Where they read and answer mail today** (Gmail on the web, Apple Mail, Outlook, phone).
8. **Which address drafts should come from by default,** and when another one should be used.
9. **Every calendar they use, and which one is main.**

**Pick the route for each mailbox** and show them the plan in a short table, with your recommendation:
- **The mail connector** (their own copy, in their Cloudflare account) when any of these is true: they read mail in Apple Mail or another app across several inboxes; they have an iCloud calendar; three or more mailboxes; a provider blocks forwarding. It reaches every mailbox, tidies each one, keeps sender rules and a 60-day undo, and reads an iCloud calendar.
- **Forwarding into the main Gmail** for one or two extra accounts whose provider allows it, when they're happy reading everything in Gmail. Gmail's own "Check mail from other accounts" no longer takes new setups, so forwarding is set at the other provider.
- **Microsoft 365 at work:** Claude's Microsoft 365 connector, if their plan offers it. Most companies block both forwarding and app passwords.
- **The main Gmail** is always reached by the Gmail connector, and also by the mail connector if they use it.

Then set it up, one route at a time.

**Forwarding, per account:**
1. At the other provider, turn on forwarding to the main Gmail, with "delete after forwarding" or "archive" if offered, so that inbox stays empty. (iCloud: icloud.com/mail → Settings → Forwarding. Outlook.com: Settings → Mail → Forwarding. Gmail: Settings → Forwarding and POP/IMAP → Add a forwarding address, then confirm the code Gmail sends.)
2. In the main Gmail: Settings → Accounts and Import → Send mail as → Add another email address, so drafts can come from it. Gmail sends a confirmation to that address; they click it.
3. Test: they send a message to that address from their phone; you find it in Gmail within a few minutes.

**The mail connector:**
1. **App passwords first.** For each mailbox, lead them to its app-password page (Google: myaccount.google.com/apppasswords, with two-step sign-in on; iCloud: account.apple.com → Sign-In and Security → App-Specific Passwords; Outlook.com: account.microsoft.com → Security → Advanced security options → App passwords). They create it and keep that page open; it goes into a Mac dialog in the next step, never into chat.
2. **Hand the deploy to Claude Code** (Standard section 15). Give them this brief to paste in the Code tab, opened on their home folder (`assistant:cowork-guide`, "The Code tab"):
   ```
   Set up my mail connector. Follow the setup steps in the README of https://github.com/johnfarkas/janet-mail. My mailboxes: <the list, provider and address for each>. My GitHub username: <username>. My time zone: <zone>. Lead me one step at a time; I'm not a developer. Every password goes into a Mac dialog, never into this chat.
   Done when: the connector is deployed, added in the Claude app, and lists every mailbox.
   Then: tell me to go back to my setup chat and say "mail is connected".
   ```
3. When they're back, check: `list_mail_accounts` shows every mailbox, and a search in each returns recent mail. Ask them for the name they gave the connector in the Claude app and record it in the mail plan.

Write the **mail plan** (each mailbox, its route, the draft address, each calendar and how it's reached) to `setup-answers.md` now.

## Part 3: Their other tools

Every tool they use for work joins now, so the briefing, the nightly check and the dashboard see it from day one.

10. **Which other tools they use for work.** Offer the usual ones so they can just say yes or no: Slack or Microsoft Teams, meeting notes (Granola, Otter, Fireflies, Zoom), a CRM (HubSpot, Salesforce, Pipedrive), project tools (Asana, Notion, Monday, Linear, Trello), files outside Google (Dropbox, Box, OneDrive), and anything else they open every day.

Then, **one tool at a time:**
1. Say in one line what it gives them once it's connected (Slack: who's waiting on them, in the briefing, with replies drafted; meeting notes: action items and promises, into tasks and project journals; a CRM: deals and contacts in project status; project tools: what's due, in the schedule).
2. Lead the connection with the steps in `assistant:cowork-guide`, "Connectors": **Customize** → **Connectors** → **Discover**, search for the tool, **Connect to Claude**, sign in and approve. They should see it under **Your connectors** as **Connected**. If it isn't in the list, say so plainly, note it under "Other tools" as "not connected (no connector)", and move on.
3. **Test it** with one read (Slack: the latest message in a channel they name; meeting notes: their latest meeting; a CRM: one recent contact; a project tool: one open item). Tell them what you saw in one line.
4. Ask what you should use it for and what to leave alone (for Slack: which channels matter, and whether you may draft replies).

Record each tool under "Other tools" in `setup-answers.md`: the connector's name exactly as Claude shows it, what it's for, what to leave alone. If a tool needs a sign-in that's theirs (a company admin approving the connector), add it to their checklist and carry on.

## Part 4: About them

11. **Where they live and work, and the time zones they keep.**
12. **How they like to be worked with:** one question at a time or a list, bullets or prose, how blunt, anything that makes work harder for them (ADHD, travel, a busy season).
13. **Their writing voice:** ask them to paste two or three emails they wrote and liked. Write five to eight voice notes from them, show the notes, and keep what they approve.

## Part 5: Work

14. **Their roles and companies,** one line each, in the wording they want used.
15. **Their projects.** First the list (name and one line each). Then, one project at a time, run `assistant:new-project` steps 1–4. Recommend separate Cowork projects (its step 5) only for the one to three busiest; the rest start inside the home project and move later.
16. **Key people outside projects:** family, advisors, assistants, anyone you should recognize. Each becomes a memory file.

## Part 6: The day

17. **When they want the morning briefing and the end-of-day wrap-up, whether both should include their texts (Messages on the Mac), when their Mac is usually on and awake, and anything they'd like a nudge about first thing each morning** (a workout, a walk, a habit).
18. **What counts as urgent, who should always reach them, and what to ignore.** Also: should the junk sweep trash obvious junk without asking each time?
19. **What the dashboard should show** (today's calendar, tasks, projects at risk, mail waiting, anything else).

## Part 7: Boundaries

20. **What's off-limits:** accounts, people or topics you never touch.
21. **Who else may see any of this:** a spouse, an assistant, nobody.

## Part 8: Build their files

In the Assistant folder, write each and read it back:
- `ABOUT-ME.md`, in this shape:
  ```
  # About me
  Updated: <date>

  ## Me
  <name>, <where they live>, time zone <zone>. <Roles, one line each.>

  ## The assistant
  Name: <name>. Manner: <their words>.

  ## How I work
  <their answers to question 12, as short lines>

  ## My voice
  <the approved voice notes>

  ## People
  <one line each: name, who they are, how to treat them>

  ## Mail plan
  | Mailbox | Provider | Reached by | Notes |
  Drafts from: <address>; <when another>.
  Calendars: <each, which is main, how it's reached>.
  Mail preferences: <junk sweep on or off; keep, block and ignore notes>.

  ## Other tools
  ## The day
  Morning briefing: <time>. Wrap-up: <time>. Nightly check: <time, when the Mac is awake>. Texts: <on or off>.
  Mac usually awake: <hours>. Morning nudge: <what, or none>.
  Urgent: <…>. Always gets through: <…>. Ignore: <…>.

  ## Dashboard
  <what it shows>

  ## Off-limits
  ## Who else may see this
  ## Accounts
  GitHub: <username>. Cloudflare: <email>. Claude plan: <plan>. Mac: <model, macOS>.
  ```
- `PROMPTS.md`: the home project's instructions, each Cowork project's instructions, and each scheduled task's prompt, under a heading each.
- `PRIORITIES.md` (this week, from what they told you), `TASKS.md` (anything they mentioned they owe), `HANDOFF.md` (the next seven days from their calendar; a "System changes" line: "Set up <date>"), `PROJECTS.md` (one card per project), `NOTES.md` (a heading and one line: "Leave me notes here."), `STATUS.md` (a heading only), `memory/index.md`, the `notes/` folder, and `imessage-read.md` if texts are on.

## Part 9: Finish the setup

1. **Home project instructions.** The starter block they pasted at the start was temporary. Give them the final block from the template at the end of `assistant:standard`, filled in with the assistant's name, to replace what's in the home project's instructions. Steps (`assistant:cowork-guide`, "Change a project's instructions later"): open the home project → its **Instructions** section → select everything there → paste → save. If the project isn't named after the assistant yet, tell them the project name doesn't matter to the system and leave it.
2. **Scheduled tasks.** Two, in the home project: the morning briefing at their time ("Run assistant:good-morning.") and the nightly check at their time ("Run assistant:nightly-check."). Create them yourself if you have a scheduling tool; otherwise lead them through `assistant:cowork-guide`, "Scheduled tasks", choosing the Assistant folder (that turns on **Require this computer**). Both need the Mac awake with the Claude app open: set them for times their Mac is usually on (question 17). If the nightly time falls when the Mac sleeps, lead them through keeping it awake on power (System Settings → Battery → Options → turn on "Prevent automatic sleeping on power adapter when the display is off"; on a desktop Mac, System Settings → Energy), or move the nightly check earlier. A missed night is caught up by the next morning's briefing.
3. **Claude Code, ready.** Steps (`assistant:cowork-guide`, "The Code tab"): open the **Code** tab → **+ New** → **Local** → pick the folder `Assistant/projects/<a project code>` → type `join <CODE>: say hello and write a test journal entry`. It should answer in two lines and add a short entry to that project's journal; you read it back.
4. **The dashboard.** Run `assistant:dashboard`. It publishes their dashboard from their own account, showing what they chose in question 19, and leads them through allowing it to read their calendar and Drive.
5. **Their checklist.** One list of everything left that's theirs, in order, each with how long it takes.
6. **First good morning.** Tell them: start a new task in the home Cowork project tomorrow morning and say "good morning". Or run `assistant:good-morning` now, so they see it working today.

Mark `setup-answers.md` with `Setup finished <date>`, and add a HANDOFF line.
