# Concept output package

Compile from a locked ConceptSpec. Default to the smallest useful package.

## Compact package

```markdown
【设计判断】
1-3 sentences: identity, core silhouette/motif, and the main design decision.

【可直接使用的提示词】
One coherent natural-language prompt ordered as identity/function -> silhouette/proportion -> large structures -> connections -> materials -> grooming/expression/action or spatial/VFX mechanism -> composition/camera -> tone/light -> style boundary.

【负面提示词】
Only the failures most likely for this concept, including reference leakage and unwanted defaults.
```

Do not exceed the user's requested length. Do not output the internal schema, score, or reference table unless asked.

## Optional packages

Add only when requested:

- character turnaround: front, side, back, head/grooming close-up, prop, material swatches;
- costume breakdown: garments and accessories without a character, connection callouts, material swatches;
- environment sheet: hero view, plan/section or alternate view, scale figures, zone and material callouts;
- VFX phase sheet: source, build, trigger, peak, release, settle, contact and light-response callouts;
- keyframe package: one final keyframe prompt plus only the camera/action/VFX fields necessary to prove the beat.

## Compilation guards

- Put global locks once and local details once.
- Keep no more than three identity motifs unless the user explicitly requests maximalist design.
- Use structural complexity to create design value; use surface detail only in focal zones.
- Never import content from a `quality_target` reference.
- Do not force a named style card unless the user explicitly triggers it.
