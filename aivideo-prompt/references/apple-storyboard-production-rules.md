# Apple-Style Storyboard Production Rules

Use this reference when creating, revising, or reviewing Apple-style commercial storyboards for AI video generation.

Keep this file general. Do not carry one project's props, wardrobe, room layout, product category, UI type, or story event into a new brief. Scene-specific details belong in the project document, not in the reusable skill.

## Output Shape

For storyboard work, `画面内容` can be written as director-facing shot descriptions when the user wants clean generation guidance. Do not force separate per-shot `生成提示词 / 负面提示词 / 剪辑备注` fields unless the user asks for them.

Each shot description should include:

- a short plain-language story beat inside the shot description first: what this shot means in the character's situation, usually one or two plain sentences before technical details; do not create a separate `故事句` field unless the user asks for it;
- focal length or lens feel, such as `35mm 平视中景`, `45mm 过肩中近景`, `70mm 物件侧面特写`, `85mm 手部近景`;
- camera system or lens-family reference when it helps, such as full-frame documentary camera, large-format commercial camera, anamorphic feel, spherical prime, macro lens, stabilized handheld, or locked-off tripod;
- camera position and axis relationship;
- one visible action;
- lighting plan: key light, fill, rim light, backlight, side light, negative fill, practical light, bounce, flag, diffusion, and where the light comes from;
- scene-specific material anchors, chosen from the current brief;
- impact vocabulary when the shot needs force, such as push-in, whip pan, snap zoom, crash zoom, rack focus, smash cut, match cut, hard backlight silhouette, low-angle wide, compressed telephoto, macro insert, or handheld jolt;
- what to avoid when this shot often fails.

Material anchors must come from the current scene. For example, a kitchen scene may use steam, tile, metal, glass, and food texture; a sports scene may use floor marks, sweat, shoes, and arena light; a workspace scene may use paper, screen reflection, desk surface, and lamp falloff. Do not hardcode one scene's objects as default rules.

Do not let professional camera language erase the story. A good shot description should read in this order inside the same paragraph: plain-language story beat, visible action, camera/light/material details, and failure modes. If the shot only lists lens, T-stop, key light, and negative prompt, it will often generate a technically tidy but emotionally empty image.

## Lighting Language

Use specific lighting language when the frame depends on atmosphere or face/material texture. Do not only write "soft light" or "cinematic light."

Describe:

- **key light / 主光**: the dominant direction and quality, such as soft side key from camera-left, hard top key, cool window key, or warm practical key;
- **fill / 辅光**: how much shadow is lifted, such as very low fill, soft bounce fill, or no fill;
- **negative fill / 负补光**: black flag, dark wall, curtain, or unlit side used to absorb light and deepen contrast;
- **rim light / 轮廓光**: thin edge light on hair, shoulder, product edge, or object outline;
- **backlight / 逆光**: light coming from behind the subject to separate it from the background;
- **side light / 侧光**: light crossing the face or object from one side, useful for pressure, texture, and depth;
- **practical light / 实景灯**: visible lamps, screens, signs, candles, car lights, or room lights that motivate the scene;
- **bounce / 反射补光**: light returned from wall, table, paper, floor, reflector, or water surface;
- **flag / 遮光旗**: deliberate blocking of light to keep one side dark or prevent spill;
- **diffusion / 柔光**: curtain, softbox, haze, paper, cloud, or diffusion frame that softens highlight edges.

For each important shot, state where the light comes from and what it does: whether it reveals the face, hides one side, cuts a rim around the subject, glints on glass/metal, or blocks the background. If the subject should feel pressured, use side key, low fill, negative fill, partial obstruction, or cool screen/practical light. If the subject regains control, reduce harsh contrast, clean the shadow side, or let a warmer key/bounce enter.

Avoid impossible lighting that changes direction between adjacent shots unless the scene has moved. Avoid flat front light, beauty-filter skin, glowing eyes, neon cyber look, and overexposed white interiors unless the brief asks for that style.

## Camera and Lens Language

Use camera and lens references to clarify image behavior, not to decorate the prompt. Do not require a brand/model unless the user asks or the style depends on it.

Preferred description order:

1. sensor / camera feel: full-frame documentary camera, large-format commercial camera, Super 35 handheld, phone-camera realism, action-camera wide, macro probe lens;
2. lens family: spherical prime, anamorphic, vintage glass, modern clean prime, macro, telephoto compression, wide-angle distortion;
3. focal length or equivalent: 24mm, 28mm, 35mm, 50mm, 70mm, 85mm, 100mm macro;
4. aperture / depth: shallow depth of field, deep focus, T2.8 commercial softness, T5.6 clean product depth;
5. movement support: handheld, shoulder rig, gimbal, dolly, slider, tripod, locked-off, overhead rig.

Examples:

- `large-format commercial camera feel, 35mm spherical prime, T2.8 shallow depth, slight handheld breathing`;
- `full-frame documentary camera, 50mm clean prime, low-light grain, shoulder-rig micro shake`;
- `100mm macro lens, shallow focus, material texture on paper edge and fingertip`;
- `24mm low-angle wide lens, mild edge distortion, energetic push-in`;
- `85mm telephoto compression, face separated from busy background, soft rim light`.

For AI generation, camera references should remain plausible and short. A useful camera note is better than a long gear list. If a brand is used, use it as a visual shorthand only, such as `Alexa Mini LF commercial texture`, `Sony FX6 documentary low-light feel`, `RED Komodo crisp digital texture`, or `iPhone handheld realism`. Do not stack many camera brands in one shot.

## Impact Shot Vocabulary

Use stronger shot terms when the brief needs pressure, surprise, release, humor, or a product moment. Keep them motivated by story and edit rhythm.

Useful terms:

- **push-in / 推近**: emotional pressure or realization, best when the frame narrows around a subject;
- **pull-back / 拉远**: reveal scale, loneliness, relief, or space opening;
- **crash zoom / 冲击变焦**: sudden comic or pressure beat, use sparingly;
- **snap zoom / 快速变焦**: quick attention shift, more playful than elegant;
- **whip pan / 甩镜**: fast directional transition, only when movement motivates it;
- **rack focus / 焦点转移**: move attention between foreground and background, useful for product reveal or decision shift;
- **macro insert / 微距插入**: material impact, fingertip, paper edge, click, texture, small proof;
- **low-angle wide / 低机位广角**: height, pressure, speed, or distortion;
- **telephoto compression / 长焦压缩**: crowding, information pressure, isolation, or flattened space;
- **hard silhouette / 强逆光剪影**: graphic clarity or mystery;
- **smash cut / 硬切**: sharp tonal turn;
- **match cut / 匹配剪辑**: elegant Apple-like transition through shape, action, sound, or direction.

Avoid adding an impact term just to sound professional. A quiet Apple-style shot can be stronger than a noisy camera move. Use impact language when the shot must physically change the viewer's attention.

## Shot Rhythm

Do not make every shot the same length. A 45- to 60-second Apple-style ad usually needs uneven rhythm:

- a believable entry into real life;
- a denser pressure or setup section;
- one held pause before the decisive action;
- a music-driven transformation or release;
- a quicker action chain when the idea becomes clear;
- a restrained ending.

Short inserts should be motivated by real actions, object details, reactions, or edits on music. A 60-second film can have 22-30 shots when many shots are 0.8-2 seconds. Avoid flat timing tables where every shot has equal duration.

## Music Timing

For a sub-60-second ad, music should usually appear early enough to shape the film. The exact timing depends on the idea, but do not let the first half become silent filler.

Useful curve:

- `0:00-0:06`: environment and human state lead;
- `0:06-0:10`: a low pulse, small motif, or rhythmic sound begins;
- `0:10-0:17`: the motif can enter and start organizing pressure;
- `0:17-0:24`: a pause, turn, product reveal, or decisive action;
- `0:24-0:40`: the main musical movement carries transformation;
- `0:40-0:52`: action chain becomes clearer and more rhythmic;
- `0:52-end`: beat withdraws or resolves.

Treat this as a rhythm map, not a fixed template.

## Camera Continuity and Axis

Respect basic scene geography and the 180-degree axis. Before writing or reviewing a sequence, define the dominant axis from the scene's relationship:

- subject to object;
- subject to tool;
- subject to destination;
- product to user;
- one character to another;
- movement direction through a space.

Keep left-right relationship, eye-line, action direction, screen direction when screens are present, and object position consistent across cuts. The shot order can change, but the viewer should always understand where the subject is, what they are looking at, and how the next shot relates to the previous one.

Useful transition logic:

1. establish geography with a wider or medium shot;
2. bridge to the object or action with an over-shoulder, side, or matching-angle shot;
3. cut to detail only after the viewer knows where that detail sits;
4. return to the subject with a matched eye-line or motivated camera move.

Avoid crossing the axis between adjacent shots, reversing direction without a transition, jumping from a medium shot into an unrelated face close-up, changing the subject's looking direction without spatial motivation, or cutting to details whose angle no longer matches the established relationship.

Cross-axis jumps are only acceptable when deliberately used to create disorientation, and that intent must be stated in the storyboard.

## Real Behavior

Simulate the real action chain for the current context. Do not use random visual jumps to fake energy.

Examples:

- if the scene is screen browsing: search, scroll, click, load, read, return, compare;
- if the scene is cooking: reach, open, pour, stir, wait, taste;
- if the scene is learning: pause, underline, switch source, take notes, test recall;
- if the scene is commuting: enter, hold, glance, react, move with the crowd;
- if the scene is a product action: hand approaches, object responds, result appears, user verifies.

Readable text can be blurred or added in post. Do not ask the model to generate lots of accurate small text unless the production method supports it.

## Character Energy

Characters should match the brief, but avoid accidental collapse. In many Apple-style ads, the person may be pressured, confused, rushed, or tired, while still having enough life to make a choice.

Use role-specific states:

- slightly tired but alert;
- interrupted concentration;
- restrained irritation;
- decision pressure;
- curiosity returning;
- quiet relief.

Avoid unintended illness, hollow eyes, lifeless fatigue, exaggerated crying, overacting, and generic "sad person staring" unless the story explicitly needs that state.

## Avoid Oily or Over-Polished Characters

When AI video makes a person look "oily," the usual cause is over-polished commercial-person lighting and grooming: glossy skin, beauty-filter texture, shiny hair, staged smiles, too-smooth wardrobe, and actor-like posing. Apple-like realism needs a person who feels observed, not a model performing the brief.

For character shots, control these details:

- **skin**: natural skin texture, low facial shine, no waxy skin, no beauty filter, no porcelain smoothing, no greasy highlight on forehead, nose, cheek, or lips;
- **makeup**: natural low-saturation makeup, matte or satin skin, no glossy lipstick, no heavy contour, no influencer beauty look;
- **hair**: natural black hair with slight irregularity, not salon-styled waves, not helmet-like shine, not overly fluffy commercial hair;
- **wardrobe**: real fabric wrinkles, soft cotton texture, lived-in but clean, no over-ironed fashion-ad styling;
- **expression**: focused, restrained, slightly tired or thinking, no charming smile to camera, no flirtatious confidence, no heroic brand-model gaze;
- **posture**: ordinary working posture, slight forward lean, small pauses, natural hand hesitation, not runway posture or motivational-speaker pose;
- **lighting**: motivated practical/screen/window light, controlled skin highlights, no glossy beauty key light, no full frontal softbox, no over-clean rim light around hair.

Useful negative phrases for prompts and review:

- no oily face, no greasy skin, no glossy beauty skin, no plastic skin, no waxy skin, no over-retouched face;
- no influencer makeup, no fashion model styling, no seductive expression, no commercial stock-photo smile;
- no salon hair shine, no perfect blowout, no polished corporate portrait;
- no over-smooth wardrobe, no shiny synthetic fabric, no staged business portrait.

If a brief needs the character to regain control, show it through breathing, posture, eye focus, and cleaner action flow. Do not solve it by making the character glamorous, glowing, or overly confident.

## Wardrobe and Production Design

Wardrobe must fit the character, class position, age, job, climate, and scene. Do not prescribe one outfit across projects.

Avoid lazy defaults such as a grey hoodie, business suit, pajamas, or student clothes unless the current character actually calls for them. Clothing should help identify the person without making them feel like a stock model.

Spaces and props should come from the story. Do not use cramped, poor, luxurious, futuristic, or overly designed spaces as shorthand unless the brief requires that meaning. A scene can be ordinary and still cinematic through light, framing, texture, and action.

## Visual Effects and Product Ideas

Apple-like films often translate an abstract product benefit into visible behavior. Keep the translation specific and physically motivated:

- objects rearrange because a task becomes clearer;
- sound narrows because focus returns;
- a crowded space opens because a decision is made;
- repeated actions sync to music because a workflow becomes smoother;
- an interface or product response changes the user's next action.

Avoid generic sci-fi UI, magical particles, data rain, portals, excessive holograms, game-like task panels, and decorative effects that do not change the scene or behavior.

## Review Checklist

When reviewing generated video or revising prompts, reject outputs if:

- adjacent shots break camera geography or cross the axis by accident;
- the character energy is far weaker or more theatrical than the brief;
- actions do not follow how a real person would do the task;
- every shot has the same duration and emotional weight;
- music enters too late to shape a short ad;
- visual effects feel decorative instead of tied to behavior;
- props, wardrobe, or space details come from a previous project rather than the current brief;
- the output feels like generic AI plastic rather than filmed material.
