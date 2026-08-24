---
name: storyboard-video-prompts
description: Design and critique film story structure, causal beats, shot functions, reference-video mechanisms, and storyboard logic. Use when the user asks for 分镜结构, 拉片, 镜头功能, 短片脚本, 广告叙事节奏, 苹果风格叙事机制, or wants a concept/reference turned into a coherent storyboard. When routed by film-prompt-producer, return only story and shot-function patches; use aivideo-prompt later for platform-ready generation prompts.
---

# Storyboard Video Prompts

## Core Workflow

When called from `film-prompt-producer`, act as the story architect:

- change only premise, protagonist goal, obstacle, causal beats, emotional curve, ending, and shot narrative functions;
- preserve locked identity, references, visual constitution, camera, lighting, VFX, sound, and platform fields;
- return a patch keyed by stable beat and shot IDs;
- do not emit final platform prompts or rewrite the whole FilmSpec.

Before visual details, make every beat pass `cause -> visible action -> result`. Keep one active route; do not blend alternatives.

Start by identifying the deliverable:

- **拉片**: analyze an existing video by timecode, shot function, camera, edit rhythm, sound, product role, and reusable mechanism. If the video file is available locally, inspect it directly before writing. If only a link is provided and cannot be accessed, state the access limit and separate verified facts from inference.
- **创意短片方案**: turn a product/theme/challenge into a concise concept, one-sentence mechanism, structure, and visual system.
- **AI 视频分镜**: define coherent shot functions and state changes. In standalone mode, split into safe generation units and provide compact prompts; in routed mode, leave platform compilation to `aivideo-prompt`.
- **苹果风格广告**: avoid copying Apple assets or marks; reuse the mechanism: one clear human problem, one elegant tool action, a restrained reveal, and a simple emotional release.

Do not start with generic praise or broad theory. Produce a usable artifact.

## Output Shapes

For **拉片**, include:

1. Overall judgment: what the film is really selling or proving.
2. Timecode table: time, picture/action, camera/editing, sound, product/function, purpose.
3. Rhythm curve: slow/fast points and why.
4. Reusable mechanisms: how to borrow the structure without copying the surface.
5. Risks for imitation: what will look fake, cheap, or too literal.

For standalone **AI 视频分镜**, include:

1. `基础设定`: duration, format, protagonist, scene, props, conflict, final line.
2. `氛围与画质`: camera, light, color, texture, sound, pacing, negative style.
3. `完整分镜脚本表`: shot number, timecode, duration, shot size, camera, action, sound, purpose.
4. Per-shot generation prompt: concrete visual prompt, not abstract intent.
5. Editing notes: matching actions, sound bridges, where to slow down, where to cut on motion.

For routed work, return only:

1. premise, goal, obstacle, and ending;
2. cause-action-result beat list;
3. shot IDs with narrative function, start state, visible action, and end state;
4. unresolved story risks.

## Apple-Style Rules

Use these principles when the user asks for 苹果风格:

- Sell the solved feeling, not the product feature.
- Use "big problem, small action" whenever possible.
- Let the product appear only when the problem needs it.
- Prefer one functional spine over a list of features.
- Use restrained typography and sparse end cards.
- Put the product in ordinary life, not a futuristic demo room.
- Build rhythm through actions: hand movement, object movement, eye-line, sound cues.
- Keep humor dry and specific. Avoid exaggerated acting, slogan shouting, tech jargon, and parameter dumps.

For Apple-style work in this simplified edition, apply only the explicit pattern rules already contained in this document; deeper brand-specific case libraries remain in the full edition.

## Prompt Writing Rules

Write prompts as production directions:

- Name the subject, action, setting, camera, light, texture, and mood.
- Keep each shot prompt focused on one action.
- Avoid complex readable text in generated frames; suggest adding UI/text in post.
- Use negative prompts for common failures: cheap corporate promo, cyberpunk neon, overacting, random logos, distorted hands, messy UI, fake cinematic trailer look.
- For character continuity, repeat age, clothing, hair, and key prop across every prompt.

## Quality Bar

Before finalizing, check:

- Does every shot move the same idea forward?
- Does every beat have a cause, visible action, and result?
- Does each next shot inherit a compatible state?
- Is there a concrete visual problem, not only a theme?
- Is there at least one memorable object/action that can carry the short?
- Can the user generate each shot independently in a video tool?
- Are product/feature moments naturally motivated?
- Is the ending restrained rather than over-explained?
