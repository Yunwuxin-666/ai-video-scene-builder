# Prompt density

Use this before final platform compilation.

## Information layers

Write information once at the narrowest useful scope:

1. global locks: identity, product, world, primary style;
2. reference binding table: role, ignore list, priority;
3. shot prompt: only the shot's action and local production changes;
4. local negatives: only likely failures for that shot;
5. global negatives: deduplicated project-wide failures.

## Compression rules

- Prefer concrete nouns and verbs over adjective stacks.
- Keep one primary action per generation unit.
- Remove department commentary from copy-ready prompts.
- Do not repeat the full style bible, identity block, or reference table in every shot.
- Do not include camera gear unless it changes the visible result.
- Do not list sound in a visual-only platform field.
- Separate post-production text, logo, UI, subtitles, and end cards.
- Keep alternative routes outside the active package.

## Contradiction scan

Reject combinations such as:

- static camera plus orbit;
- slow motion plus urgent real-time action without a timed transition;
- clean product light plus dirty disaster atmosphere;
- one-take plus unexplained teleport;
- locked identity plus a reference that controls a different face;
- fixed light direction plus a sudden unmotivated color-temperature jump.

## Output test

The final prompt must tell the target model:

- what must remain stable;
- what changes now;
- where and when it changes;
- which references control which attributes;
- which failure modes matter.

Delete anything that does not help one of those functions.
