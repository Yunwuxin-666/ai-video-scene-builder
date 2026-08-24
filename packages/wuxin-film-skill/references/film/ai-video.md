---
name: aivideo-prompt
description: Compile approved storyboards and locked production specifications into copy-ready Chinese prompts for AI video platforms, including image-to-video, text-to-video, Seedance, scene packs, and prompt repair. Use when the user explicitly asks for AIvideo-prompt, AI 视频提示词, 图生视频/文生视频提示词, Seedance-ready prompts, 场景包, or platform-ready per-shot generation prompts. For multi-department film planning, route through film-prompt-producer first.
---

# AIvideo Prompt

## Core Rule

Produce an executable video-generation artifact, not a loose creative essay. Split ideas into stable 4-8 second shots that can be generated independently and edited together.

When called from `film-prompt-producer`, act as the final platform compiler:

- treat FilmSpec, story beats, continuity state, visual constitution, and department patches as locked;
- do not invent new plot, characters, props, locations, style routes, camera plans, or claims;
- report contradictions instead of blending them;
- compile global locks and reference roles once, then write only local changes per generation unit;
- return the smallest executable package for the target platform.

When invoked standalone, build only the missing minimum needed for a usable prompt and mark material assumptions.

Default to Chinese output unless the user asks otherwise.

When the user references the `Yunwuxin-666/AIvideo-prompt` style, use a four-section structure: global settings, shot prompts, sound/edit notes, and negative constraints.

For commercial films, first build an ad brief before writing shots. For Apple-style commercials, use the explicit Apple-style short rules in this document; deeper case libraries remain in the full edition.

## Task Router

- **Idea to video**: for a simple one-department request, create a compact concept and executable shots; for a complex or multi-department project, use `film-prompt-producer`.
- **Book/theme challenge**: extract one concrete object/action from the theme, then build a short around it. Avoid abstract book-report visuals.
- **Product/commercial short**: sell the solved feeling, not a feature list. Pick one functional spine.
- **Apple-style short**: only when explicitly requested, use a clear human problem, one elegant tool action, restrained product reveal, dry humor or quiet emotional release. Keep brand imitation bounded to reusable visual mechanisms.
- **Reference-video breakdown / 拉片**: if a local video exists, inspect it before writing. Separate verified facts from inference when only a link is available.
- **Prompt repair**: rewrite vague prompts into concrete subject, action, setting, camera, light, texture, mood, negative prompt, and edit notes.

## Required Output For Storyboards

Use these sections:

1. `〖基础设定〗`: duration, format, protagonist, scene, props, conflict, final line, one-sentence mechanism.
2. `〖氛围与画质〗`: camera style, light, color, texture, sound, pacing, negative style.
3. `〖画面内容〗`: per-shot description plus generation prompt.
4. `〖完整分镜脚本表〗`: shot number, timecode, duration, shot size, camera, action, sound, purpose.

Add `生成与剪辑建议` when the user needs production guidance.

For advertising tasks, add `〖广告片设定〗` after `〖基础设定〗` unless the user asks for a very short answer. Include audience, product role, core feature, human problem, emotional benefit, proof action, product reveal timing, end-card line, and imitation boundary.

## Prompt Writing Standards

Each shot prompt must include:

- Subject and continuity details: age, clothing, hair, key prop.
- One visible action only.
- Setting and time of day.
- Camera: shot size, angle, motion.
- Light, color, texture, and mood.
- Style constraints: realistic commercial, documentary, hand-held, clean product ad, etc.

Avoid:

- Complex readable text inside generated frames. Suggest adding UI/text in post.
- Brand logos unless the user owns the brand or asks for fictional placeholders.
- Multiple unrelated actions in one shot.
- Generic words such as "高级感" without visual evidence.
- Repeated handheld phones or screens as generic "information people" props. Unless the shot is specifically a product operation, avoid making side characters hold phones toward the protagonist; it often generates awkward sales-like poses. Prefer attention pressure through body distance, eye-line, chairs, books, shadows, foreground blocking, voice fragments, or ordinary objects already in the scene.
- Hard-intruding props for attention-distraction shots. Do not make paper, phones, tablets, signs, or objects press into the protagonist's face, screen, or desk unless the brief explicitly asks for physical interruption. For attention-distraction concepts, make the disturbance emerge from peripheral vision, a person entering the edge of frame, a book held at chest height, sticky notes attached to a person/book, a chair sliding closer, a shoulder blocking light, eye-line shifts, and layered voice fragments. Props should distract, not attack.

## Seedance 2.0 Output Mode

When the user asks for Seedance 2.0, 火山引擎, 方舟, 即梦, or a Seedance-ready prompt, make each shot usable as an independent generation unit. Keep the director-facing storyboard paragraph, then add a compact `Seedance 2.0 提示词` block only when the user needs copy-ready prompts. Do not bury the usable prompt inside long analysis.

For each Seedance-ready shot, write in this order unless the user's platform template requires another order:

1. reference role binding, if assets exist: define exactly what each `@图片/@视频/@音频` controls, such as subject identity, product appearance, first frame, last frame, camera motion, action rhythm, lighting style, BGM, or sound effect;
2. stable subject definition: protagonist/product/clothing/hand/prop details that must not drift;
3. one visible action and its time progression inside the clip;
4. setting and spatial relation: where the subject starts, where it moves, where the camera is, and what stays in foreground/background;
5. camera and motion: shot size, focal feel, camera height, support, movement curve, and whether the shot is handheld, stabilized, locked, push-in, tracking, rack focus, or macro insert;
6. light, color, texture, and style: motivated light source, palette, material anchors, image quality, and commercial/realistic/CG style;
7. audio cues when useful: BGM mood, beat hit, environmental sound, action-synced sound effect;
8. negative constraints: forbid the exact failures likely for that shot.

Use short intra-shot timing only when it improves control, such as `0-2s`, `2-5s`, `5-8s`. Timing should describe visible changes, not a screenplay with many beats. If one clip needs more than three time beats, split it into separate shots.

Prefer one subject action per Seedance prompt. Avoid contradictory instructions such as "slow motion fast chase", "static camera orbit", or "clean Apple product shot with dirty disaster smoke". Avoid asking for multiple unrelated actions, readable long text inside the generated frame, precise UI text, or complex character interactions in one shot. Add text, logos, subtitles, and end-card typography in post unless the user explicitly asks the model to generate them.

For image-to-video or reference-heavy work, explicitly state whether a reference is `首帧`, `尾帧`, `人物形象`, `产品外观`, `场景背景`, `运镜参考`, `动作参考`, `特效参考`, `节奏参考`, `BGM参考`, or `音效参考`. Never assume the model will infer the role of a reference asset. If multiple references are present, bind each one once at the top of the prompt and keep the rest of the prompt using the same labels.

For commercial Seedance output, include a unified negative prompt after the shot list and, when needed, a per-shot negative line for local failures. Negative prompts should name visual failures concretely: wrong hand, extra fingers, warped wrist, QR code, barcode, floating UI, cheap plastic, dirty edge, flickering product shape, unreadable text, logo drift, random camera shake, motion blur that hides the product, or sudden scene jump.

### Seedance 2.5 Output Mode

When the user asks for Seedance 2.5, apply the Seedance structure above, then adapt only to capabilities established in the current request or current official platform information:

- For 30-second single-clip output, write a `30秒单段生成版` only when the user asks for Seedance 2.5, one-take generation, or fewer cuts. Divide the prompt into 4-6 visible phases with time ranges such as `0-5s`, `5-10s`, `10-17s`, `17-24s`, `24-30s`. Each phase must preserve the same protagonist, product, scene axis, light direction, palette, and camera logic.
- Do not automatically collapse every commercial into one 30-second prompt. If the scene has hard location jumps, complex product close-ups, or a hero packshot, keep the shot list and add an optional 2.5 single-clip version. Editing separate clips may still be safer than forcing one long generation.
- For up to 30 images, 10 videos, and 10 audio clips, output a `参考素材绑定表` when there are many assets. For every reference state both what it controls and what visible attributes it must ignore. Group references by role: `人物一致性`, `产品外观`, `场景/空间`, `首帧/尾帧`, `动作/表演`, `运镜/镜头语言`, `光线/色彩`, `特效`, `BGM/音效`. Do not list all references inside every shot prompt; bind once, then refer to the group labels.
- For local editing / subject replacement, explicitly protect what must not change: original camera motion, body action, timing, lighting direction, background geometry, shadows, reflections, and contact points. State only the replaceable target, such as face, clothing, product shell, signboard, or foreground object.
- For longer 30-second generation, add continuity locks: same hand wearing product, same sleeve color, same screen direction, same movement axis, no jump cut, no sudden outfit change, no product shape drift, no lighting-temperature jump, no background layout morphing.
- If the user is building a 30-second ad, use 2.5 for longer continuous pressure/release shots and 2.0-style segmented prompts for risky inserts such as hands, payments, product macro, readable UI, and packshot endings.
- For multi-round extension, inherit the prior clip's end state as the next clip's start state. Restate only identity, environment, sound, and motion locks that must not drift.
- Do not claim confirmed native 4K, public Volcano Ark model IDs, API pricing, or rate limits without current official documentation.

When the user asks for `画面内容` / storyboard shot descriptions, do not split the shot into visible labels such as `主体 / 构图 / 镜头 / 音效`. Write one natural director-facing paragraph for each shot. Inside that paragraph, organically include the subject and visible action, composition, style, camera/lens/depth/movement, background ambience, action-synced sound effects, mood, and color/light design.

The paragraph should read like a real shot description, not a form. Example pattern: first describe the story beat and subject action in plain language, then continue in the same paragraph with framing, focal length, camera height/movement, depth of field, foreground/background blur, light direction on the face or object, color temperature/material texture, and sound cues. Use terms such as `35mm 平视中景`, `手持微晃`, `T2.8 浅景深`, `前景虚化`, `右侧窗光侧主光`, `左侧负补光`, `桌面白纸 bounce fill`, `触控板轻点声`, or `人声从右声道贴近` only when they help the exact shot.

Use the elements as an internal checklist, not as output headings. If the user asks for a shot table, the table cell for `画面内容` should still be a compact paragraph containing these elements, not a stack of labeled fields.

For Apple-style storyboard revisions or generated-video review, use that route only when explicitly requested and preserve the user's product, narrative, and visual identity.

For advanced storyboard descriptions, use precise cinematography language when useful: key light, fill, rim light, backlight, side light, negative fill, practical light, bounce, flag, diffusion, camera-system feel, lens family, aperture/depth, support/movement, and impact-shot vocabulary such as push-in, rack focus, crash zoom, whip pan, macro insert, telephoto compression, or match cut. Keep these terms tied to the current shot; do not add gear lists or effects for decoration.

For character-heavy AI video prompts, actively prevent over-polished or oily-looking people: specify natural skin texture, controlled facial highlights, low-saturation makeup, natural hair, real fabric wrinkles, ordinary posture, and motivated practical/screen/window light. Reject waxy skin, glossy beauty skin, influencer makeup, stock-photo smiles, salon hair shine, and staged model posing unless explicitly requested.

## Continuity Rules

- Use 4-8 second clips by default.
- Repeat the same protagonist description in every shot prompt.
- Establish 2-4 stable scene anchors before close-ups.
- For multi-shot action, lock spatial roles before writing spectacle: who stays at the gate/exit/upper level, who approaches from which side, what direction the attack travels, where the body lands, and what the next shot inherits.
- Distinguish positive action from negative constraints. The shot paragraph should describe the intended motion once; put common failure modes such as reversed direction, returning to the wrong exit, or source/target swaps in the negative prompt.
- Use object/action matches for edit continuity: hand movement, page turn, screen tap, door open, eye-line, sound bridge.
- Keep props meaningful; remove decorative clutter.

## Quality Check

Before finalizing, verify:

- One central idea drives every shot.
- In routed mode, no locked story or department field was rewritten during compilation.
- The visual problem is concrete.
- The product/tool appears only when motivated.
- The ad brief translates the feature into a human situation.
- Each shot is individually generatable.
- Screen geography is consistent across adjacent shots: source, target, height level, entry/exit direction, eye-line, attack direction, and landing position do not contradict each other.
- VFX has a readable source and force direction. If a body, weapon, object, cloth, or particle moves, the prompt explains what caused the motion and what physical reaction proves it.
- The ending is restrained, not slogan-heavy.
- Global locks and references are written once; shot prompts contain only local changes.
- Conflicting references or instructions are reported rather than blended.
- Negative prompts cover common AI failures.
