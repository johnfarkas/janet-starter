---
name: prospects
description: The Prospects pipeline (code PRO), the home assistant's staging ground for potential clients, customers or deals before they sign. Use when the person names a possible client or a new conversation ("add a prospect", "I talked to", "this could be a client"), when a prospect's stage or next step changes, when one signs (promote it to its own project), when one goes quiet or says no (park or close it), and when they ask for "the pipeline", "prospects" or "who's in play". Optional: only for people who set it up.
---

# Prospects (PRO)

Standard section 18 has the rules. The home assistant runs this skill and is the single writer of the pipeline table and every profile; any chat may add to the journal. A project chat or Claude Code session that learns something about a prospect writes a journal entry for the home assistant to fold in.

**Where things live** (in the Assistant folder)
- `projects/PRO/command-center.md` (with the stamp line): the pipeline table, one row per prospect, open rows first, then Parked, Won and Lost.
  ```
  | Prospect | Code | Stage | Source | Next step | Due | Last touch | Owner |
  ```
- `projects/PRO/journal.md`: one journal for all prospects. Every heading carries the prospect's code: `## 2026-11-17 14:30 — PRO · ACM · First contact`.
- `projects/PRO/profiles/<code>.md` (lowercase code, e.g. `acm.md`): who they are, the people and their roles, the need, the source, what we've learned (dated), and links to working files.
- Working files for a prospect, if any, wherever the person keeps client work (the profile says where).

**Stages:** Lead → Conversation → Discovery → Proposal → Won | Parked | Lost. Lead to Proposal are open; every open row has a dated next step.

## Set it up (once)

When the person wants a pipeline: create `projects/PRO/` with `command-center.md` (stamp line, an empty table), `journal.md`, `profiles/` and `notes/`, and a card in `PROJECTS.md` with tier `pipeline`. It lives in the home project; it gets no Cowork project of its own.

## Add a prospect

1. **Code.** Three capital letters, kept for life. Check `PROJECTS.md` and the table for clashes. If the name doesn't give one cleanly, propose one.
2. **Profile.** Write `profiles/<code>.md` from what the person said and what's in mail, calendar, meeting notes and the web. Facts with dates and sources; what we don't know goes under "Open questions".
3. **Row.** Add it to the table with stage, source, a next step and its due date, and today as the last touch.
4. **Journal.** Append `## <date time> — PRO · <CODE> · Added` with the source and the next step.
5. **Memory.** People they'll deal with get a memory file (`assistant:memory`), marked as a prospect contact.
6. Tell the person in two lines: the code, the stage and the next step with its date.

## Update a prospect

On any touch (a call, an email, a proposal sent): append a journal entry with the code in its heading; update the row's stage, next step, due date and last touch; add what was learned to the profile. If a next step passes without a touch, ask for the new date. Never leave an open row without one.

## Promote (a signed agreement)

Only on a signed agreement or contract, or the person saying it's signed.
1. **Project:** run `assistant:new-project` on its "From Prospects" path, with the same code and the answers filled from the profile. Ask only what the profile lacks (usually where the contract is, key dates and the expertise line).
2. **Seed:** the profile seeds the draft Canon (positioning, people, what they need) and the memory files for the client and its people.
3. **History:** copy this prospect's entries in `projects/PRO/journal.md` (headings with its code), in order, into the new project's `journal.md` as one first entry, `## <date time> — <CODE> · History from Prospects`, each copied heading dropped one level (`###`). The Prospects journal stays as it is.
4. **Close the row:** stage `Won <date>`, next step "Promoted to <CODE>". Add one line at the top of the profile: `Promoted <date>: the record is now projects/<CODE>/.` Append `## <date time> — PRO · <CODE> · Won` to the Prospects journal.

## Park or lose

Parked means not now; Lost means no. Set the row's stage to `Parked <date>` or `Lost <date>`, with the reason in "Next step" (for Parked, a revisit date if there is one), and append a journal entry with the reason. Memory about the people stays. A parked prospect that comes back gets a new next step.

## The pipeline (when asked)

Open rows by stage, each with its next step and due date, overdue first; then one line each for Parked and recent Won and Lost. Under it, anything stalled (open, no touch in 14 days) with a suggested next step.

## Isolation

One prospect's material never appears in another prospect's or client's work (Standard section 14).
