---
name: environment-concept-design
description: Design film, animation, and game environments as functional concept art with spatial hierarchy, traversal, scale, landmark silhouette, material placement, history, atmosphere, and copy-ready prompts. Use for 场景概念, 环境原画, 地编概念, 建筑/关卡空间设计, environment sheet, or environment-only prompt repair. In a producer workflow, return environment-design patches only.
---

# Environment Concept Design

## Routed Mode

When ConceptSpec or a producer handoff is present:

- Change only `environment_design`: narrative function, functional zones, spatial hierarchy, traversal/access, hero structure, scale anchors, material placement, weathering/history, set-dressing density, and atmosphere.
- Key the patch by location or concept ID and state the base ConceptSpec version.
- Preserve character identity, story locks, palette/style, camera, lighting, and VFX.
- State what the view must prove, but let `镜头.skill` choose framing and lens.
- Use approved material grammar; map materials to surfaces without inventing a new palette.
- Treat `quality_target` references as completion and hierarchy evidence only. Do not import their architecture, palette, props, symbols, or setting.
- Report contradictions instead of blending incompatible spaces.
- Return a compact patch, not a full prompt package.

Use the complete output below only in standalone mode.

## Design order

Work in this order:

```text
world rule -> location function -> user/occupant -> functional zones -> traversal -> dominant landmark -> scale anchors -> structural system -> material placement -> age/weather evidence -> atmosphere -> presentation view
```

Do not start from decorative architecture. A high-quality environment must answer who uses it, what happens there, how one enters and moves through it, what dominates the silhouette, and how materials prove climate, maintenance, age, and power.

## Quality rules

- Establish foreground, middle ground, and background as functional depth, not empty layering.
- Use one hero structure and two or three supporting masses. Avoid equal-detail clutter everywhere.
- Include human-scale anchors such as doors, steps, railings, furniture, vehicles, trees, tools, or figures when scale matters.
- Place materials by construction logic: load-bearing stone, infill timber, weather-facing metal, worn path, repaired edge, water line, soot, moss, dust, or polish where justified.
- Keep set dressing in named zones. Preserve clean navigational and silhouette areas.
- For game environments, make traversal, cover, sightlines, thresholds, vertical levels, and landmark orientation readable without turning the image into a UI diagram.
- For film/animation, make staging areas, entrances/exits, light motivation, and camera access plausible.

## Standalone output

```markdown
【设计判断】
1-3 sentences: location function, dominant spatial idea, and history.

【可直接使用的提示词】
World/location function -> zones/traversal -> hero silhouette and scale -> construction/materials/history -> atmosphere -> presentation view -> tone/style boundary.

【负面提示词】
Likely failures: decorative but unusable space, random architecture, unclear scale, blocked traversal, equal-detail clutter, material mismatch, reference leakage, unreadable text.
```
