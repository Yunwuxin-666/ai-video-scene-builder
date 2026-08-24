---
name: 风格.skill
description: Visual-style department skill for primary aesthetic route, target tone, palette, composition intent, material anchors, texture, and style boundaries. Use when the user explicitly asks for 风格.skill, 影视风格, 画风, 美术风格, 材质表达, mood-board translation, or style-only prompt repair. In a film-prompt-producer workflow, return visual-constitution patches only and do not rewrite story, action, camera, technical lighting, VFX, sound, or timing.
---

# 风格.skill

## Routed Mode

When FilmSpec or a producer handoff is present:

- Change only `visual_constitution`: primary style, optional secondary influence, forbidden styles, palette, target tone, material anchors, and texture boundary.
- Keep one primary style and at most one secondary influence.
- Key local exceptions by shot ID.
- Do not write camera packets or technical lighting rigs.
- Do not import incidental details from references.
- Do not emit a new full generation prompt.

Use the complete prompt formats below only in explicit standalone mode.

## Purpose

Turn a user's desired image, shot, scene, or vague style phrase into a prompt that a visual generation model can execute. Work like a senior director and production designer: translate intention into visible choices, especially style route, target tone, light source, palette, lens, composition, surface texture, atmosphere, and failure prevention.

Default to Chinese output. Keep the result usable for AI image or video generation, not a loose style essay.

## Core Workflow

1. Identify the visual job:
   - single image prompt;
   - image-to-video prompt;
   - text-to-video prompt;
   - storyboard shot prompt;
   - style exploration with multiple visual routes;
   - prompt repair for a weak prompt.
2. Extract the user's fixed elements:
   - subject identity, object, product, costume, location, time, action, emotion, brand tone, required style, forbidden style.
3. If the user gives only an abstract mood, choose 1-2 concrete image anchors before writing:
   - setting anchor: office, street, classroom, studio, kitchen, corridor, mountains, factory, bedroom;
   - material anchor: skin, fabric, metal, glass, paper, wood, stone, rain, smoke, dust, screen light.
4. Set the target tone before writing final prompt language. Tone is not a new style card; it is the image's brightness, contrast, color density, and texture order inside the chosen style:
   - brightness key: high-key, middle-key, low-key;
   - contrast: low-contrast soft, medium-contrast natural, high-contrast dramatic;
   - shadow behavior: open shadow detail, shaped dark mass, near-black only when intentional;
   - highlight behavior: soft diffuse highlight, clean edge/specular highlight, hard point highlight;
   - color density: low saturation, medium saturation, high saturation, or one restrained accent color;
   - texture direction: clean commercial, grounded realism, film grain, humid/gritty, soft diffusion, or tactile handmade.
5. Select a visual style route:
   - use the user's named style when specific;
   - if the user asks "有哪些风格" or needs options, read `references/style-catalog.md`;
   - if the user gives only "高级/电影感/真实/梦幻", translate it into concrete lighting, palette, material, and camera choices.
6. Write the prompt in executable order:
   - stable subject and one visible action;
   - setting and time;
   - composition and shot size;
   - lens/camera movement;
   - target tone: brightness key, contrast, shadow/highlight control, color density;
   - motivated light;
   - palette;
   - 2-4 material/texture anchors;
   - mood and cinematic style;
   - negative constraints.
7. For video prompts, keep each clip to one visible action and 4-8 seconds unless the user asks for a longer single take.
8. If the task requires actual lighting design, prompt repair through light, or an uploaded-frame diagnosis, use the tone target here but let `灯光.skill` handle the technical lighting plan: source, direction, diffusion, key-to-fill ratio, negative fill, separation, and color temperature.

## Output Formats

### Single Prompt

Use this when the user wants one image/video prompt:

The output must include a separate `【影调判断】` line before the copy-ready prompt. This line should name the target brightness key, contrast, shadow/highlight behavior, color density, and texture direction. Keep it as a visual target, not a full lighting rig.

```text
【风格判断】
一句话说明采用的影像风格和它为什么适合这个画面。

【可直接使用的提示词】
主体 + 一个动作 + 场景/时间 + 景别/焦段/机位/运动 + 光线 + 色彩 + 材质锚点 + 情绪 + 风格约束。

【负面提示词】
列出最可能破坏该风格的视觉失败。
```

### Style Options

Use this when the user asks for several visual routes:

```text
【方向一：风格名】
画面气质：...
材质重点：...
适合场景：...
示例提示词：...
负面提示词：...
```

Give 3-6 routes by default. Make each route genuinely different in light, palette, camera, and material, not just different names.

### Prompt Repair

Use this when the user gives a weak prompt:

```text
【原提示词的问题】
指出 1-3 个最影响生成质量的问题。

【改写原则】
说明补了哪些可执行视觉信息。

【改写后提示词】
...

【负面提示词】
...
```

## Prompt Formula

Use this internal formula:

Expanded tone-aware formula:

```text
subject identity + stable appearance + one visible action + setting/time + composition/shot size + lens/camera position/movement + target tone (brightness key / contrast / shadows / highlights / color density) + motivated light + palette + material anchors + emotional atmosphere + style boundary + negative prompt
```

```text
主体身份 + 稳定外观 + 一个可见动作 + 场景和时间 + 构图/景别 + 镜头焦段/机位/运动 + 光源逻辑 + 色彩系统 + 材质锚点 + 情绪气质 + 风格边界 + 负面提示
```

Good prompts replace vague adjectives with visible evidence:

- "高级感" -> controlled reflections, clean bevel highlights, restrained neutral palette, negative space.
- "电影感" -> motivated key light, lens choice, depth of field, foreground/background layering, restrained color grade.
- "真实感" -> natural skin texture, real fabric wrinkles, imperfect surfaces, practical light sources.
- "梦幻感" -> soft diffusion, low-contrast backlight, fine haze, translucent materials, slow camera movement.
- "压迫感" -> compressed space, negative fill, foreground occlusion, low angle or telephoto compression.

## Style and Material Rules

- Prioritize material anchors over style labels. A style becomes executable only when metal, glass, fabric, skin, paper, stone, rain, fog, dust, or screen light has a clear behavior.
- Treat tone as the bridge between style and lighting. In this skill, name the desired tone result; do not over-specify lighting rigs unless the user asks for lighting design.
- Keep style cards and tone controls separate. A style card can include a `Tone / 影调` line, but tone categories such as high-key, low-key, low saturation, or high contrast are not standalone reusable style cards.
- When adapting a catalog card, preserve the card's aesthetic grammar while tuning tone to the subject, brand, and scene. For example, clean commercial can be high-key white-silver or low-key black-glass; neo-noir can be heavy and wet or restrained and corporate.
- Tie the light to the scene. Use window light, practical lamps, street lamps, neon signs, station lights, studio softbox, candlelight, screen light, or overcast sky.
- Keep camera language functional. Use 24-28mm for spatial pressure, 35mm for human scenes, 50mm for medium intimacy, 70-100mm for portraits/products, macro for texture inserts.
- Avoid unreadable text inside generated frames. Put subtitles, UI text, logos, and end-card typography in post unless the user explicitly asks otherwise.
- For character-heavy prompts, protect realism: natural skin texture, low-saturation makeup, ordinary posture, real fabric wrinkles, no waxy skin or influencer posing.
- For product/commercial prompts, make the product the cleanest object in the frame: stable geometry, controlled reflections, no dirty edges, no warped logos.

## Video-Specific Rules

For text-to-video or image-to-video:

- Write each shot as an independent 4-8 second unit.
- Keep one subject action per shot.
- Specify camera support and movement: locked-off, slow push-in, tracking, handheld micro-shake, orbit, rack focus, macro insert.
- Preserve continuity: same subject, same clothing, same light direction, same movement axis, same product shape.
- Add timing only when it improves control, such as `0-2s`, `2-5s`, `5-8s`.
- If a reference image/video is supplied, bind its role explicitly: first frame, last frame, subject identity, product appearance, camera motion, lighting style, action rhythm, or texture reference.

## Negative Prompt Checklist

Always include concrete negative constraints for likely failures:

- visual quality: low-res, over-sharpened, plastic texture, cheap CGI, muddy contrast;
- tone: dead black shadows without intention, clipped highlights, muddy gray wash, cheap LUT look, arbitrary teal-orange grade, dirty skin tone, subject blending into background, flat high-key light, low-key underexposed mud;
- people: waxy skin, extra fingers, warped hands, influencer makeup, stock-photo smile, stiff pose;
- product: shape drift, dirty edge, unreadable logo, random scratches, flickering geometry, cheap plastic;
- scene: random clutter, inconsistent lighting, background morphing, unreadable text, floating UI, wrong era props;
- camera/video: random shake, sudden jump cut, motion blur hiding subject, unstable focus, scene teleport.

## Reference Loading

Read `references/style-catalog.md` when:

- the user asks what visual styles exist;
- the user wants multiple style options;
- the user names a broad style and needs details;
- the user names a stable style card / visual mother style and wants that aesthetic applied consistently;
- the task needs material examples or sample prompts.

When using a catalog card, treat it as opt-in: apply it only when the user names the card or gives a clear trigger phrase. Do not turn a single card into the default look for a whole genre.

Do not read it for a simple one-off prompt if the style and material direction are already clear.
