# Reference role contract

Bind every supplied reference before design work. A reference is evidence for named fields, not a bag of reusable parts.

| Role | May control | Must ignore unless separately assigned |
|---|---|---|
| identity | face, body identity, stable species/IP features | costume, palette, setting, pose, camera |
| silhouette | outer contour, proportion rhythm, mass distribution | surface ornament, palette, identity |
| costume_structure | garment layers, large-piece geometry, connection logic | face, palette, exact motifs, background |
| environment_layout | spatial zones, path, scale, landmark relation | character identity, palette, exact props |
| material | surface family and light behavior | shape, identity, palette unless requested |
| palette | dominant, secondary, accent, forbidden colors | costume pieces, motifs, identity |
| camera | view purpose, framing, angle, perspective | subject design, palette, lighting |
| lighting | tone, source direction, contrast, separation | palette identity, costume, camera geometry |
| vfx_mechanism | source, force, phase, contact, containment | character identity, palette, copied symbols |
| quality_target | completion, detail hierarchy, material separation, render finish | all content: identity, palette, costume, motif, prop, setting, pose |

## Binding rules

- Record `controls`, `must_ignore`, and priority for every reference.
- If two references claim the same field, narrow their roles or ask one blocking question. Never average incompatible identities or palettes.
- Treat examples labeled “方向示例”, “质感参考”, “完成度参考”, or equivalent as `quality_target` unless the user explicitly assigns content fields.
- Extract mechanisms and design quality, not protected marks, exact artwork, random text, watermarks, or incidental screen overlays.
- Do not carry palette, costume, facial features, motifs, or props from a previous request into a new concept without a current lock.
- State the active binding once. Do not repeat the full table inside every prompt.

## Quality-reference test

Before compilation, ask internally: if the source image were recolored and its character replaced, would the intended quality target still be satisfied? If not, content leakage probably occurred.
