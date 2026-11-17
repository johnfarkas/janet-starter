---
name: editorial
description: Editorial check for anything written in the person's name or for their clients, in any assistant chat. Use before any draft is marked final, before delivering to a client or publishing (posts, website copy, decks, documents), when editing copy for tone or voice, and when the person says "clean this up" or "run it through editorial".
---

# Editorial check

A check to run before anything written for the person goes out. A project with its own brand check runs this one first, then its own.

## When to run

- Before delivering any written draft to a client or stakeholder
- Before publishing (posts, website copy, decks, documents)
- When editing existing copy for tone or voice
- When the person says "clean this up" or "run it through editorial"

## The check

Run these in order. A single Tier 1 failure means revise before delivery.

### 1. Tier 1 Hard Tells (AUTO-FAIL — any occurrence)

These 25 words never appear in the person's work. If any are present, replace or remove.

```
navigate, leverage, delve, tapestry, landscape, robust, seamless, synergy,
holistic, paradigm, fundamentally, comprehensive, utilize, facilitate,
innovative, streamline, empower, foster, harness, pivotal, crucial, realm,
moreover, furthermore, underscores
```

**Action:** Find and replace every instance. No exceptions.

### 2. Tier 2 Soft Tells (FLAG — review in context)

These 15 words are acceptable occasionally but cluster in AI-generated text. Flag if more than 2 appear in a single piece.

```
straightforward, arguably, notably, specifically, essentially, inherently,
particularly, significantly, compelling, collaborative, tangible, transparent,
transformative, ecosystem, journey
```

**Action:** If 3+ appear, rewrite the sentences that contain them using plainer language.

### 3. Structural Tell Patterns (AUTO-FAIL)

These phrases are AI scaffolding. They add no meaning and signal machine authorship.

```
"It is worth noting"
"It is important to"
"Here is the thing"
"The reality is"
"Let that sink in"
"At the end of the day"
"In conclusion"
"To summarize"
"As we have seen"
"This is perhaps the most"
"Not just X but Y" (negative-contrast framing)
"Equal parts X, Y, and Z"
"Sits at the intersection of"
```

**Action:** Delete the phrase entirely or restructure the sentence around what's actually being said.

### 4. Em Dash Density

Count em dashes (—) in the piece. Threshold: **no more than 12 per ~2,500 words.**

**Action:** If over threshold, convert some to commas, periods, or parentheses. Em dashes are fine — they just can't dominate.

### 5. Sentence Length Variation

Bucket every sentence by word count:

| Bucket | Word Count |
|--------|-----------|
| Short | 1–8 |
| Medium-short | 9–15 |
| Medium | 16–22 |
| Medium-long | 23–30 |
| Long | 31+ |

**Flag if:** Any single bucket holds more than 40% of all sentences, OR two adjacent buckets combine for more than 70%.

**Action:** Vary rhythm. Break long sentences. Combine short ones. Prose should breathe.

### 6. Copula Density

Count sentences that begin with weak copula constructions:

```
"It is..." / "It's..."
"That is..." / "That's..."
"This is..." / "This's..."
"There is..." / "There are..."
```

**Flag if:** More than 20 copula-led sentences per piece.

**Action:** Rewrite to lead with the subject doing something. "It is clear that members benefit" → "Members benefit."

### 7. Negative-Contrast Framing

**Standing rule:** State what something IS. Never lead with what it is not.

- ❌ "This isn't a bank — it's a community."
- ✅ "This is a member-driven financial community."
- ❌ "We don't just talk about values — we build them into the structure."
- ✅ "Our values are built into the structure."

**Action:** Find every "not/don't/isn't" construction used as a framing device. Rewrite to lead with the affirmative claim.

---

## Additional Voice Guardrails

### Triadic Structures
Break "X, Y, and Z" patterns when they appear more than twice in a piece. They're a rhythmic tell. Rewrite some as two-item pairs, some as full sentences.

### Staccato Runs
Three or more consecutive sentences under 8 words = flag. It reads like a LinkedIn post. Vary the rhythm.

### The person's voice
Check the piece against "My voice" in `ABOUT-ME.md`: the voice notes the setup wrote from their own emails. Anything written in their name should sound like them.

---

## How to Report

When running this check, produce a brief summary:

```
EDITORIAL QA — [Document Name]
Tier 1 fails: [count] — [list words found]
Tier 2 flags: [count] — [list words found]
Structural tells: [count] — [list phrases found]
Em dashes: [count] / threshold 12
Sentence variation: [pass/flag] — [dominant bucket if flagged]
Copula density: [count] / threshold 20
Negative framing: [count found]
VERDICT: PASS / REVISE
```

If REVISE, make the fixes and re-run. Deliver only after PASS.
