---
name: 灯光.skill
description: Cinematic lighting-department skill for motivated sources, direction, softness, contrast ratio, separation, exposure intent, and color temperature. Use when the user explicitly asks for 灯光.skill, 灯光设计, 灯光优化, 布光, 主光, 辅光, 轮廓光, 高调光, 低调光, or lighting-only repair. In a film-prompt-producer workflow, return lighting patches only and preserve story, action, style route, camera, VFX, and sound.
---

# 灯光.skill

## Routed Mode

When FilmSpec, ConceptSpec, or a producer handoff is present:

- Change only `lighting_patch`.
- Implement the locked target tone without selecting a new style.
- Key every patch by shot ID.
- Preserve action, blocking, camera, palette, art direction, VFX, and sound.
- Report incompatible light or location states instead of blending them.
- Do not emit a new full generation prompt.

For ConceptSpec, change only `presentation.lighting`: source, direction, quality, contrast, exposure intent, color temperature, separation, and material-reveal purpose. Preserve subject design, palette, composition, camera, environment, and VFX mechanism.

Use full prompt-repair output only in explicit standalone mode.

## Mission

Turn a user's scene, script, storyboard, rough concept, uploaded image, generated frame, or video prompt into credible cinematic lighting direction. Prioritize motivated light sources, target tone, key-to-fill ratio, light direction, light quality, contrast, color temperature, separation, background depth, practical lights, and emotional function.

Do not rewrite the user's plot, choreography, camera coverage, costume, art direction, product claim, VFX, or original visual style unless lighting problems require a small clarification. The lighting exists to reveal story, subject, space, material, and emotion.

Always output in Chinese unless the user explicitly asks for English or bilingual prompts. Keep final prompts copy-ready.

## Load References

Load only the reference files needed for the task:

- For lighting types, direction, quality, contrast, color temperature, and classic setups, read `references/lighting-language.md`.
- For scene-specific lighting decisions such as interview, product ad, education video, suspense, night exterior, action, VFX, food, beauty, or documentary realism, read `references/scene-rules.md`.
- For uploaded image or generated-frame lighting diagnosis, read `references/image-diagnosis.md`.
- For copy-ready prompt formats and reusable phrasing, read `references/prompt-templates.md`.

## Core Workflow

1. Identify the input form: script, scene concept, storyboard, shot list, uploaded image/reference frame, product ad, interview/education video, generated-image repair, or full AI image/video prompt.
2. Preserve the user's existing subject, action, brand tone, camera language, environment, costume, props, art direction, and VFX unless the user asks for a broader rewrite.
3. Infer the lighting job before naming lights:
   - reveal beauty or texture;
   - separate subject from background;
   - create intimacy, pressure, danger, mystery, cleanliness, luxury, realism, or spectacle;
   - make a product/material readable;
   - motivate a time of day or visible light source;
   - repair flatness, muddy shadows, mixed color, or AI-looking light.
4. Define the target tone before naming the setup:
   - brightness key: high-key, middle-key, low-key;
   - key-to-fill ratio: low-ratio clean/soft, medium-ratio natural, high-ratio dramatic;
   - shadow state: open detail, shaped dark mass, silhouette, or intentional near-black;
   - highlight state: soft diffuse, controlled edge/specular, hard point highlight, or clipped risk;
   - color temperature logic: unified, warm/cool contrast, mixed practicals, or stylized color source;
   - texture result: clean commercial, realistic skin/fabric, glossy product, gritty humid, film-grain, or soft diffusion.
5. Establish light motivation: window, sun, sky, practical lamp, screen, neon, candle/fire, car headlight, streetlight, stage source, overhead fixture, or stylized non-diegetic source. If light has no visible source, make the invisible rig feel physically plausible.
6. Choose the key light direction and quality first. Decide whether the scene needs front key, side key, back key, top light, underlight, soft wrap, hard cut, bounced light, or negative fill.
7. Set contrast through key-to-fill ratio. Do not remove all shadows unless the task is high-key commercial, beauty, education, or clean studio content. Shadows are part of the design.
8. Add separation only when needed: rim light, hair light, edge light, background glow, haze beam, motivated doorway/window spill, or product kicker.
9. Shape the background. Avoid lighting only the subject while leaving the environment dead. Use wall gradients, practical pools, motivated spill, depth pockets, silhouette zones, or color contrast.
10. Control color temperature. Use warm/cool contrast only when it supports the scene's emotional or spatial logic. Avoid arbitrary teal-orange unless the user asks for that look.
11. For AI-generated images or video prompts, specify lighting in physically grounded language: source, direction, distance/size, diffusion, shadow behavior, contrast, color temperature, and atmospheric interaction.
12. Diagnose conflicts:
    - light direction contradicts visible sources;
    - face is flat because key and fill are equal;
    - product texture disappears because light is too frontal;
    - subject merges with background because no separation exists;
    - color temperatures fight without meaning;
    - low key becomes underexposed mud;
    - beauty light becomes plastic skin;
    - prompt piles many lighting styles that cannot coexist.
13. Output a lighting plan or prompt package according to the user's need. If the user wants a quick answer, give the best single lighting solution. If the task is a film/ad scene, include a structured lighting packet.

## Tone Control System

Use this system whenever the user asks about 影调, 光影质感, 明暗层次, 高级感, 电影感, commercial polish, or generated-frame lighting repair. Tone is the visible result of lighting decisions, not a separate visual style.

### Tone Decisions

- 明暗基调 / brightness key: high-key for clean, open, trustworthy, beauty, education, medical, SaaS, and bright commercial images; middle-key for natural realism and dialogue scenes; low-key for suspense, luxury, pressure, mystery, night, and noir.
- 光比 / key-to-fill ratio: low ratio keeps faces and products clear; medium ratio preserves realism; high ratio creates drama, depth, authority, danger, or luxury. Avoid equal key/fill when the image needs shape.
- 暗部 / shadow design: decide whether shadows should hold readable detail, become shaped dark masses, create silhouette, or approach black. Low-key does not mean underexposed mud.
- 高光 / highlight design: decide whether highlights should be soft and broad, clean edge/specular lines, practical point highlights, or deliberately harsh. Product and premium images need controlled highlights more than generic brightness.
- 色温 / color temperature: unified color temperature feels clean and institutional; warm/cool contrast creates spatial or emotional separation; mixed practicals need a visible reason; stylized color should come from an implied source.
- 分离 / separation: use rim light, background gradient, haze beam, practical glow, negative fill, or color contrast only when the subject would otherwise merge with the background.
- 材质结果 / material result: glass needs edge light and clean reflection; metal needs crisp speculars; fabric needs grazing softness; skin needs believable pores and controlled shine; food needs side/back appetite light.

### Common Tone Failures

- 高调失败: flat face, no shape, overexposed whites, plastic skin, product edges disappearing, background with no depth.
- 低调失败: dead black shadows, dirty gray skin, no catchlight, subject lost in background, underexposed mud mistaken for mood.
- 高对比失败: arbitrary hard shadows, clipped highlights, face split without story reason, product detail lost.
- 低对比失败: foggy gray wash, no separation, cheap pastel filter, weak material texture.
- 冷暖失败: teal-orange used without motivated sources, mixed color temperature fighting on skin, neon spill with no environmental logic.

### Tone-To-Lighting Translation

- Clean high-key commercial: large soft key, controlled fill, light background gradient, small edge/rim for product or hair, restrained speculars.
- Trustworthy education/consulting: soft side/front key, mild fill, gentle background depth, clear catchlight, neutral or slightly warm skin.
- Premium low-key product: controlled black environment, narrow edge lights, flags/negative fill, clean reflections, high contrast without losing shape.
- Noir/suspense: hard side/back key, heavy negative fill, practical/neon motivation, selective highlights, readable silhouettes.
- Naturalistic realism: motivated window/practical light, medium contrast, imperfect but believable shadows, restrained color temperature.
- Dream/soft memory: diffused back or side light, low contrast, lifted shadows, fine haze, protected highlights.

When a full visual prompt also uses `风格.skill`, keep the division clear: `风格.skill` names the aesthetic route and target tone; this skill explains how the light produces that tone.

## Output Modes

### Scene / Script Lighting Design

Use this when the user gives a scene, script, shot, storyboard, or rough idea.

Every output in this mode must include `影调结果`: brightness key, key-to-fill ratio, shadow/highlight behavior, color temperature logic, separation method, and texture result. Put it before or immediately after the lighting judgment.

Output:

1. `灯光判断`: one short paragraph explaining the emotional and narrative job of the light.
2. `主布光方案`: key light, fill, back/rim, background, practicals, atmosphere, and color temperature.
3. `为什么这样打`: explain how the light supports character, product, story, or brand tone.
4. `可复制提示词`: 1-3 copy-ready prompts. Include English lighting terms only when useful for image/video models.

### Image / Frame Lighting Optimization

Use this when the user uploads an image or asks to fix a generated frame.

Every output in this mode must include `影调诊断`: identify whether the frame fails through flat high-key, muddy low-key, clipped highlights, dirty shadows, weak separation, color-temperature conflict, or cheap LUT behavior.

Output:

1. `灯光诊断`: 3-6 concrete observations about light direction, contrast, shadow, color, separation, motivation, and background depth.
2. `主要问题`: identify the one lighting issue that most weakens the image.
3. `灯光改法`: give a practical lighting repair plan.
4. `优化后画面`: a director-facing paragraph describing the same image with improved lighting.
5. `重生成提示词`: copy-ready image/video prompt, preserving the user's subject and style while replacing weak lighting language.

### Lighting-Only Add-On

Use this when the user already has a full prompt and only wants lighting language added.

Output only lighting add-ons. Do not rewrite the full prompt unless asked.

### Comparison / Options

Use this when the user asks for multiple lighting directions.

Give 3-5 options with distinct emotional and technical functions, such as:

- naturalistic window light;
- low-key suspense;
- warm practical intimacy;
- high-key commercial;
- neon noir;
- hard sunlight realism;
- premium product kicker setup.

For each option, include `适合什么`, `不适合什么`, and one prompt.

## Quality Rules

- Prefer motivated light over decorative light.
- Name the visible or implied source whenever possible.
- Always describe the tonal result produced by the lighting: brightness key, contrast, shadow state, highlight state, color temperature logic, and separation.
- Do not use `高调`, `低调`, `电影感`, or `高级感` as final lighting language. Translate them into source size, direction, diffusion, key-to-fill ratio, negative fill, highlight control, background depth, and material readability.
- Use shadows intentionally; do not flatten the image by default.
- Protect shadow information unless silhouette or near-black is the point. Low-key lighting should still preserve shape, catchlight, and subject separation.
- Protect highlights in commercial and product images. Premium tone usually depends on controlled speculars and edge highlights, not overall brightness.
- Do not stack incompatible styles such as high-key beauty, noir low key, candlelight, neon, and noon sunlight in one prompt unless the user wants surreal collage.
- For product scenes, make material readable: glass needs edge highlights and controlled reflection; metal needs crisp speculars; fabric needs soft grazing light; food needs appetizing side/back light.
- For faces, decide whether the goal is beauty, realism, authority, fragility, mystery, or pressure before choosing the setup.
- For education/consulting videos, keep faces trustworthy and clear, but avoid dead-flat webcam lighting. Use soft key, controlled fill, mild background depth, and clean separation.
- For cinematic prompts, avoid only saying `cinematic lighting`. Specify source, direction, quality, contrast, color, and atmosphere.
- When combining with camera or VFX prompts, keep lighting language separate enough that it does not override camera movement, action continuity, or material effects.
