# Image Lighting Diagnosis

Use this reference when the user uploads a still image, generated frame, reference frame, or screenshot and asks for lighting optimization.

## Inspect First

Before writing, visually inspect:

1. Main subject and what the image wants the viewer to notice.
2. Apparent light source or missing light source.
3. Key direction: front, side, back, top, bottom, mixed, unclear.
4. Shadow behavior: too flat, too muddy, too harsh, physically contradictory.
5. Contrast: high key, medium, low key, silhouette, underexposed, overfilled.
6. Color temperature: clean, motivated mix, accidental color pollution.
7. Separation: subject-background edge, hair/shoulder/product outline.
8. Background depth: wall gradient, practicals, pools of light, empty dead space.
9. Material response: skin, glass, metal, fabric, food, smoke, water, VFX glow.
10. AI artifacts caused by lighting: inconsistent highlights, impossible shadows, plastic skin, glow without source, flat ambient fog.

## Common Problems and Fixes

| Problem | Symptom | Fix |
|---|---|---|
| Flat light | Face/product evenly bright, no form | Move key 30-60 degrees to side, lower fill, add negative fill |
| Muddy low key | Dark areas have no shape | Add motivated rim/background light, define one bright edge |
| No separation | Subject blends into background | Add rim/kicker, background gradient, practical light, or color contrast |
| Unmotivated light | Brightness has no source | Add visible source or describe implied window/lamp/neon/screen |
| Mixed color chaos | Warm/cool patches fight randomly | Choose dominant source and one secondary motivated color |
| Plastic skin | Over-smoothed beauty light | Use larger soft key, natural shadow rolloff, preserve skin texture |
| Product unreadable | Material looks generic | Use edge light, grazing light, controlled speculars, flags/reflections |
| Fake cinematic haze | Fog glows evenly | Add backlight/side beam and let haze reveal light direction |
| Overdramatic face | Shadow hides required expression | Raise fill slightly, keep eye light/catchlight |
| Dead background | Subject lit, space empty | Add wall gradient, practical lamp, window spill, or depth pockets |

## Output Discipline

- Diagnose lighting only unless the user asks for composition, camera, color grading, or art direction.
- Preserve the subject and scene. Do not invent a new image.
- Name the strongest lighting issue first.
- Give one primary repair before optional variations.
- For prompt repair, replace vague words like `cinematic lighting` with specific light behavior.

## Diagnosis Template

`灯光诊断`

- 主光方向：
- 阴影/反差：
- 色温：
- 主体分离：
- 背景层次：
- 最影响成片的问题：

`灯光改法`

Use one paragraph. Specify source, direction, quality, fill, rim/background, color, atmosphere.

`重生成提示词`

Preserve the subject/action/style. Insert lighting language in this order:

1. Motivated source
2. Key direction and quality
3. Fill and contrast
4. Rim/background/practical
5. Atmosphere/material interaction
