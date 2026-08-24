---
name: vfx-prompt-designer
description: 特效/VFX部门 skill，负责特效来源、材质、受力、路径、接触、环境反应、光学响应和消散。Use when the user explicitly asks for 特效.skill, VFX, CG特效, 粒子/烟火/水/电/破碎/全息/变形/布料特效, or VFX-only repair. In a film-prompt-producer workflow, return VFX patches only and preserve story, action, camera, lighting design, style route, sound, and timing.
---

# 特效.skill

## Routed Mode

When FilmSpec, ConceptSpec, or a producer handoff is present:

- Change only `vfx_patch`.
- Key every patch by shot ID.
- Define source, material, force, direction, target, contact, environmental reaction, optical response, and settle point.
- Use the locked camera, lighting, style, action, and duration as inputs.
- Report a physics or contact contradiction instead of rewriting upstream fields.
- Do not emit a new full generation prompt.

For a static ConceptSpec, change only `vfx_design`: source, mechanism, material, shape language, force/direction, depicted phase, contact/reaction, optical response, hierarchy, and containment. Key by effect or concept ID. A still image shows one primary phase; use a phase sheet only when requested. Preserve locked character, environment, camera, lighting, palette, and style.

Use complete VFX prompt packages only in explicit standalone mode.

## Objective

Turn a user's script, concept, storyboard, shot list, or rough visual idea into Chinese VFX prompts suitable for cinematic video generation, CG animation, and advertising previsualization. Prioritize material truth, interaction detail, force logic, product readability, and scene plausibility.

Always output the final prompts in Chinese unless the user explicitly asks for English or bilingual prompts.

## Core Workflow

1. Identify the content form:
   - Script: extract VFX-relevant beats and turn them into shot-level prompts.
   - Storyboard/shot list: preserve shot order and enrich each shot.
   - Single concept: propose 3-6 effect directions before writing prompts.
   - Product ad: tie effects to product selling points and brand texture.
   - CG animation: include simulation, shader, lighting, camera, and render details.
   - Existing prompt: preserve the user's intent and improve only the VFX specificity, material logic, interaction, and cinematic plausibility.

2. Diagnose the effect logic for each shot:
   - Source: where the effect comes from.
   - Material: what it is made of and how it behaves.
   - Force: what drives it, such as wind, impact, gravity, pressure, heat, electricity, magnetic field, fluid viscosity, or character motion.
   - Contact: how it touches skin, fabric, metal, glass, ground, air, water, UI, or product packaging.
   - Light: how it emits, absorbs, reflects, refracts, scatters, or blocks light.
   - Scene reason: why this effect belongs in this setting and does not feel pasted on.

3. Map VFX to action beats before writing. Do this for every genre and input type, not only action scenes.
   - Approach / build-up: add pre-contact signs such as air pressure, fluid tension, condensation, particles gathering, fabric reacting, UI priming, reflected light, or surface vibration.
   - Contact / trigger: add the exact interaction point such as foot-to-ground, tire-to-water, product-to-liquid, sword-to-sword, hand-to-hologram, bottle-to-ice, or ingredient-to-heat.
   - Impact / peak: add the strongest visible effect such as splash, sparks, fracture, smoke burst, powder bloom, UI response, light pulse, or material transition.
   - Release / follow-through: add trails, droplets, debris arc, cloth delay, hair delay, lingering glow, dissipating vapor, or secondary particle motion.
   - Settle / cut point: add falling particles, fading smoke, water trails, residual reflections, final condensation, product reveal, or readable pause.
   - Skip any beat that is not visible or not useful. Do not force every beat into every shot.

4. Preserve locked shot language when the user provides camera packets, shot descriptions, blocking, timing, composition, lens, frame rate, shutter, aperture, aspect ratio, camera height, distance, support system, camera movement, focus, cut point, lighting, art direction, or "keep original action" instructions.
   - Do not rewrite, merge, simplify, reinterpret, or "improve" those fields unless the user explicitly asks for a rewrite.
   - Keep original camera parameters intact when producing copyable prompts.
   - Do not dump VFX as a loose keyword paragraph after the shot.
   - Embed VFX into the action beats: approach, contact, impact, release, follow-through, settle, and cut point.
   - If rewriting the action sentence for prompt use, preserve the original action intent and sequence while adding only physically motivated VFX behavior at the exact visible moments.
   - If a compact output is requested, still preserve all original camera parameters verbatim and compress only the VFX wording.

5. Select effect families. For broad or multi-scene tasks, read the same-directory `effect-library.md` and pick only the relevant families.
   - For stylized combat, xianxia/wuxia magic, game ultimates, anime-style spell circles, or large-scale supernatural fights, also read the same-directory `game-combat-continuity.md`. Use it for timing, anchoring, layered spell geometry, and effect continuity. Do not apply it to unrelated realistic/product scenes.

6. Write prompts at shot level. Avoid generic "cool special effects"; describe visible behavior frame by frame.

7. Add negative prompts or failure checks when the shot is likely to become fake, chaotic, or visually unclear.

8. When revising an existing VFX/video prompt, perform a post-edit self-check against the selected relevant rules before finalizing. Confirm that the revised prompt still preserves the user's locked camera/blocking/timing, that each added effect has a source, trigger, force direction, contact point, environment reaction, and cut/result state. If the revision reveals a reusable failure pattern, add it to the relevant reference or checklist; if it is only a specific scene note, keep it in the project file and do not pollute the general skill.

## Scope Guard

Do not let examples, tests, or the current conversation's scene style contaminate the skill. Infer the effect language from the user's current material only.

- Do not default to rain, bamboo, swords, cold blue light, martial arts, explosions, cars, holograms, or any prior example unless the user provides or requests that world.
- Do not reuse a previous test shot as a template for unrelated scenes.
- Do not overfit to one genre. The same workflow must support product ads, food shots, fashion, beauty, cars, technology, education, music videos, fantasy, realistic drama, and CG animation.
- Treat references as a menu, not a required checklist. Select the smallest set of effect families that serve the shot.
- When the user's material is already detailed, preserve its structure and only integrate VFX at appropriate visible action points.
- When the user's material is vague, propose options by scenario and ask at most one sharp clarifying question only if needed.

## Output Format

For one-off requests, use this compact structure:

```markdown
## 特效方向
一句话说明这个特效为什么适合当前场景/产品。

## 镜头提示词
中文提示词，包含主体、场景、特效来源、材质、运动、交互、光照、镜头、质感。

## 负面提示词
避免漂浮贴图、无来源特效、材质错误、遮挡主体、过度发光等问题。
```

For scripts or storyboards, use a shot table:

```markdown
| 镜号 | 场景/动作 | 特效类型 | 合理性 | 中文提示词 | 负面提示词 |
|---|---|---|---|---|---|
```

For existing storyboards with detailed camera packets, use this preservation format:

```markdown
Shot X｜原文镜头信息
[Preserve the user's original Camera packet verbatim.]

动作内嵌特效版:
[Rewrite only the action/visual description by threading VFX into precise action beats. Keep timing, blocking, camera, lens, movement, focus, and cut point unchanged.]
```

For highly controlled storyboards, prefer a beat map before final copy:

```markdown
| 时间/动作点 | 原动作 | 适合嵌入的特效 | 为什么在这里加 |
|---|---|---|---|
```

Then output a copyable version that keeps the original camera packet and replaces only the visual/action paragraph with an integrated VFX paragraph.

For concepts or scripts without camera packets, create a shot-ready integrated prompt instead of inventing locked camera parameters unless the user asks for them.

When the user asks for detailed design, add:

```markdown
## 特效拆解
- 材质:
- 受力:
- 交互:
- 光照:
- 镜头:
- 合成/渲染注意:
```

## Prompt Formula

Build each Chinese prompt in this order:

```text
影视/广告类型 + 主体 + 场景 + 特效来源 + 材质质感 + 运动方式 + 与环境/角色/产品的交互 + 光照和反射/折射/散射 + 镜头语言 + 画面风格 + 物理合理性
```

Example:

```text
高端新能源车广告，雨夜城市街道，一辆银色概念车从湿润路面缓慢驶来，蓝白色电能脉冲从充电接口沿车身金属缝隙和轮毂边缘流动，电光只在金属接触点和湿润水膜附近产生细小火花，雨滴被电场轻微扰动，车漆表面反射霓虹和电弧冷光，地面积水出现清晰倒影，空气中有薄雾和体积光，低机位推镜，电影级 CG 广告质感，电流、雨水、金属和城市环境的交互真实可信。
```

## Quality Rules

- Keep product or character readable. Effects may frame, reveal, or amplify the subject, but must not bury it.
- Avoid free-floating effects. Fire needs fuel, smoke needs source, water needs container or impact, electricity needs conductive path, holograms need projection surface or device logic.
- Match material behavior. Water is light and transparent; serum is viscous; honey stretches; metal reflects sharply; glass refracts; fabric folds; dust stays near ground before diffusing.
- Include contact evidence. Add wet trails, scorch marks, displaced dust, reflected firelight, refracted shards, fabric wrinkles, condensation, scratches, or UI glow on fingers when appropriate.
- Use light as proof. Fire illuminates nearby surfaces; fog reveals beams; water catches rim light; glass splits highlights; particles cast tiny shadows or glow only when justified.
- Control visual hierarchy. Main effect first, secondary particles second, atmosphere last.
- Prefer one strong effect system per shot. Combine effects only when the physics and visual purpose are clear.
- For advertising, connect the effect to a selling point: speed, coldness, freshness, precision, power, softness, natural origin, intelligence, luxury, safety, or transformation.

## Common Failure Checks

Before finalizing, check:

- Does the effect have a source?
- Does its force direction match the action?
- Does the material behave correctly?
- Does the scene react to the effect?
- Does lighting change because of the effect?
- Is the effect plausible for this environment?
- Does it serve the shot instead of becoming decorative noise?
- After revision, did the new VFX wording remain connected to the original action/camera continuity, or did it create a decorative macro shot, random cutaway, or unsupported spectacle beat?

## Reference

Use the same-directory `effect-library.md` when the request needs many effect types, a genre-specific library, or more detailed material/interaction ideas.
