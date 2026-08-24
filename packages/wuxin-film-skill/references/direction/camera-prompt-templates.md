# Prompt Templates Reference

Use this reference when the user needs copy-ready camera prompts for image generation, image-to-video, text-to-video, or prompt repair.

The skill must protect the user's original action, plot, lighting schedule, environment, visual style, art direction, VFX style, color palette, sound design, costumes, props, and texture/material wording. That protection is internal. The final copy-ready prompt must not contain preservation reminders, audit notes, or placeholder labels.

Avoid the opposite error: do not remove the user's actual visual style, VFX, lighting, sound, environment, costume, prop, or art-direction text from a full generation prompt. Remove only the meta reminder, not the user's creative content.

## Internal Preservation Rule

When the user has written non-camera content, do not rewrite it. The output should either:

1. full-prompt mode: keep the user's actual non-camera wording inside the final prompt and add camera language to each relevant time beat;
2. camera-addition mode: output only camera language to be appended to the user's existing prompt, but clearly use this only when the user asks for additions only.

Never place these internal phrases inside the final generation prompt:

- `原文设定`
- `逐字沿用`
- `不改写`
- `不压缩`
- `不替换同义词`
- `180度轴线`
- `越轴`
- `轴线关系`
- `[沿用原有...]`
- `do not paraphrase`

Do not summarize detailed VFX, smoke, dust, reflection, rain, fabric, lighting, sound, art direction, or visual-style text. Do not move those details into negative prompts unless the user already wrote them as constraints.

## Cinematic Still Prompt

Use one compact paragraph unless the user asks for structure.

```text
[user's original subject/action/scene wording, only if the answer is a full prompt]. 镜头采用 [shot size]，[left/right/front/back relationship position, angle, height, distance] 机位，[lens] 焦段，[T-stop/fps/shutter when useful]，[support/movement]，[focus behavior]，画面在 [hold/cut/visual emphasis] 处收住。
```

Example:

```text
咨询师在桌边标注学生方案，家长坐在对面。镜头采用中近景，机位压在家长肩后形成轻微过肩前景，50mm，T2.8，24fps，1/48s，眼平三脚架固定，焦点先锁在咨询师眼神，再顺着手部标注轻微下移到纸面，画面停在笔尖完成标记的瞬间。
```

## Image-To-Video Prompt

Use this when the user uploads an image or asks to animate a still frame. Keep image identity and layout stable; add only camera motion and continuity.

```text
以上传图作为首帧、主体身份和空间布局参考，[duration] 内保持 [subject/action continuity]。镜头采用 [shot size]，[lens]，[camera height/distance/left-right relationship]，[support and movement path]，[fps/shutter/T-stop]，焦点 [focus target/transition]，在 [original action beat] 后收住。
```

Example:

```text
以上传图作为首帧、主体身份和街道空间布局参考，4秒内保持人物原有服装、面部身份和行走方向。镜头采用街面中全景，35mm，胸口高度，距主体约3米，稳定器从左向右平行跟拍，24fps，1/48s，T4，焦点锁在人物上半身并轻微跟随步伐起伏，在第二步落地后稳定收住。
```

## Text-To-Video Time-Slice Prompt

Use this as the default output when the user gives a timed action, commercial shot, fight beat, dialogue beat, or VFX-heavy scene. Each time slice is one natural paragraph. Put camera parameters inside the paragraph, not in a table.

Before splitting time slices, decide whether the clip should remain one continuous camera move. For short clips under 5 seconds, prefer one-take or two-stage coverage unless the user asks for full storyboard cuts or the scene truly needs separate viewpoints. Do not create many time slices only because the original text has many action beats.

Full-prompt mode:

```text
[timecode]：[user's actual original action, visual style, environment, lighting, VFX, sound, costume, prop, and art-direction wording relevant to this beat]. 镜头从 [viewpoint] 进入，采用 [shot size]，[camera position/height/distance/left-right relation]，[lens]，[fps/shutter/T-stop/aspect if useful]，[support system]，[movement path/speed]，焦点 [focus behavior]，在 [cut point/continuity point] 衔接下一段。
```

Camera-addition mode:

```text
[timecode]：[user's original action beat or concise time-beat anchor]. 镜头从 [viewpoint] 进入，采用 [shot size]，[camera position/height/distance/left-right relation]，[lens]，[fps/shutter/T-stop/aspect if useful]，[support system]，[movement path/speed]，焦点 [focus behavior]，在 [cut point/continuity point] 衔接下一段。
```

Keep the user's action order intact. If the action has multiple beats, split camera coverage along the user's timecode. Do not simplify, reorder, or invent action.

If several adjacent beats can be covered by one motivated camera move, keep them in one paragraph and describe the camera's distance, angle, focus, or framing change inside the same shot.

## One-Take Dynamic Prompt

Use this when cutting would damage rhythm. A one-take can still change distance, camera height, focal feel, and focus behavior across time slices.

```text
一镜到底：
0-1秒：[user's first original action beat]. 镜头以 [shot size] 起，机位在 [position/height/distance/left-right relation]，[lens]，[fps/shutter/T-stop]，[support] 沿 [movement path] 运动，焦点 [focus behavior]。
1-2秒：[user's second original action beat]. 镜头不切，改为 [shot size/viewpoint]，[lens or distance shift]，[movement adjustment]，焦点 [focus transition]，保证 [continuity point] 可见。
2-3秒：[user's third original action beat]. 镜头继续 [movement path]，[camera height/distance]，[lens/focus]，在 [beat] 处完成视觉重心转移。
3-4秒：[user's final original action beat]. 镜头以 [ending shot size/framing] 收住，[support/movement/focus]，停在 [ending hold].
```

Use this as the first candidate for fights, chases, walks, product motion, explosions interacting with a moving subject, and any scene where viewer orientation matters more than rapid montage.

## Multi-Camera / Multi-Shot Prompt

Use this when separate cameras or cuts create stronger coverage than a one-take. Each shot or camera gets its own natural paragraph.

Use this only after the one-take or two-stage option is not enough. Every camera must answer a different viewer need; do not add A/B/C cameras for variety alone.

```text
A机 / Shot 1 [role and timecode]：[user's original beat]. 镜头采用 [shot size]，[camera position/height/distance/left-right relation]，[lens]，[fps/shutter/T-stop]，[support/movement]，焦点 [focus behavior]，用于 [cut/use condition].

B机 / Shot 2 [role and timecode]：[user's original beat]. 镜头采用 [shot size]，[camera position/height/distance/left-right relation]，[lens]，[fps/shutter/T-stop]，[support/movement]，焦点 [focus behavior]，用于 [cut/use condition].

C机 / Shot 3 [role and timecode]：[user's original beat]. 镜头采用 [shot size]，[camera position/height/distance/left-right relation]，[lens]，[fps/shutter/T-stop]，[support/movement]，焦点 [focus behavior]，用于 [cut/use condition].
```

## Prompt Repair Pattern

Input prompt problem examples:

- "电影感高级画面" with no camera evidence.
- "一个人在街上走，很有故事感" with no camera position or movement direction.
- "对话场景" with no eye-line, left/right relation, or shot size.
- "动作场景" where cuts hide required footwork or hand action.

Repair sequence:

1. Name the exact camera problem only when giving an explanation.
2. Keep the original action/plot/light/environment/style/VFX/sound wording out of the diagnosis unless needed for a time-beat anchor.
3. Select camera viewpoint, shot size, focal length, and hidden spatial relation.
4. Add a complete per-shot camera packet in natural prose: aperture, frame rate, shutter, camera height, distance, support, movement path, focus, and cut point.
5. Add negative constraints only for camera and continuity failures when useful.

## Negative Prompt Blocks

Human scenes:

```text
no action reorder, no hidden key gesture, no broken eye-line, no reversed left-right relation, no random camera push, no unmotivated zoom, no subject leaving frame, no foreground blocking the required action, no sudden scene jump, no outfit drift, no face drift
```

Dialogue scenes:

```text
no characters looking into camera unless specified, no broken eye-line, no reversed speaker-listener placement, no missing listener reaction, no cut before the line lands, no random push-in, no over-shoulder blocking the speaker's required gesture
```

Product scenes:

```text
no product leaving frame, no hand action hidden, no focus missing the product operation, no shape flicker, no jump cut inside one operation, no camera move that hides the proof action
```

Street/action scenes:

```text
no chaotic camera shake, no unclear movement direction, no sliding feet hidden by framing, no body clipping through objects, no motion blur hiding the subject, no reversed movement direction, no cut that breaks the movement path
```

Animation-to-live-action:

```text
no impossible camera angle, no floating perspective, no game cutscene camera unless requested, no weightless body movement, no missing contact point, no camera teleport, no cut that changes the original action direction
```

## Director-Facing Reasoning Scaffold

Use this only for internal reasoning or when the user asks for an explanation. Do not copy this into a generation prompt.

```text
This shot should protect [original action/plot beat] by choosing [shot size], [camera position], [lens], [movement], [focus], and [cut point]. It must not rewrite action, visual style, lighting, VFX, sound, or art direction.
```
