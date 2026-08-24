---
name: 剪辑.skill
description: 影视剪辑、分镜衔接、转场设计、镜头连续性和 AI 视频剪辑提示词 skill。Use when the user asks for 剪辑.skill, 剪辑转场, 镜头衔接, 分镜衔接, 剪点, cut point, match cut, sound bridge, J-cut, L-cut, 动作切, 遮挡转场, 甩镜转场, 蒙太奇, 广告短片剪辑, AI 视频分镜之间如何连接, or wants storyboard shots turned into an edit-ready transition plan with copy-ready prompts.
---

# 剪辑.skill

## Mission

Turn separate shots, story beats, scripts, or AI-video prompts into an edit-ready continuity and transition plan. The job is not to list transition effects. The job is to decide why the cut exists, where the cut lands, what carries continuity, and how each transition should be expressed in director-facing prompts.

Prioritize story clarity, spatial continuity, emotional rhythm, sound continuity, action continuity, and edit economy. A good cut often disappears. A visible transition must earn attention by advancing time, space, psychology, product proof, comedy, memory, or information.

## Use With Other Skills

- Use `镜头.skill` first or alongside this skill when camera coverage, lens, shot size, camera movement, axis, or screen geography is under-specified.
- Use `aivideo-prompt` alongside this skill when the user needs full AI-video generation prompts, Seedance-ready prompts, commercial shot packages, or storyboard tables.
- This skill owns the edit layer: cut logic, transition type, sound bridge, rhythm, continuity glue, negative edit constraints, and post-production notes.

## Core Workflow

1. Identify the input type: existing storyboard, rough scene list, ad script, generated-video prompts, reference-video breakdown, or a single requested transition.
2. Preserve the user's original story beats, action order, setting, characters, product, visual style, and camera intention. Do not rewrite the scene unless asked.
3. For every shot boundary, infer the edit function:
   - continue action;
   - reveal information;
   - compress time;
   - shift location;
   - enter memory/dream;
   - increase pressure;
   - land comedy;
   - prove product function;
   - hold emotional aftermath;
   - bridge two narrative lines.
4. Choose the continuity carrier:
   - action match;
   - eye-line;
   - screen direction;
   - object match;
   - graphic shape/color;
   - sound bridge;
   - rhythm/music beat;
   - foreground occlusion;
   - camera movement direction;
   - emotional reaction.
5. Choose the simplest transition that solves the boundary. Prefer hard cut, action cut, J-cut, L-cut, match cut, or sound bridge before decorative effects.
6. Place the cut point on a concrete beat: hand touches object, foot lands, door crosses frame, eye-line shifts, product activates, music hit lands, breath stops, line ends, object fills frame, or reaction changes.
7. Check continuity risks: screen direction flip, eye-line mismatch, action jump, prop drift, product shape drift, emotional jump, sound discontinuity, over-fast rhythm, decorative transition hiding an important proof detail.
8. Output copy-ready transition prompts. Each prompt must mention the previous shot's outgoing action and the next shot's incoming action, plus the transition mechanism.

## Output Modes

### Shot Boundary Edit Plan

Use when the user provides multiple shots or a storyboard.

Output:

1. `剪辑总策略`: one paragraph on rhythm, continuity, and whether cuts should be invisible or expressive.
2. `分镜衔接表`: shot boundary, edit function, transition type, cut point, continuity carrier, sound design, risk to avoid.
3. `逐条转场提示词`: copy-ready prompt for each boundary.
4. `统一负面约束`: camera/edit failures to avoid.

### Transition Repair

Use when the user has weak, generic, or over-decorated transitions.

Output:

1. Diagnose the failed boundary: unclear function, wrong rhythm, weak continuity carrier, decorative effect, or broken screen geography.
2. Replace with a concrete transition and cut point.
3. Provide one revised prompt and one negative prompt.

### Scene-Specific Editing Advice

Use when the user asks "what transition should I use here?"

Output:

1. State the story function of the boundary.
2. Recommend 1 primary transition and 1 backup.
3. Explain why the chosen transition is better than flashier options.
4. Provide copy-ready prompt language.

### Full AI Video Edit Package

Use when the user needs generatable clips and editing instructions.

Output:

1. Keep per-shot prompts separate.
2. Add `剪辑连接提示` after each shot except the final shot.
3. Add post-edit notes for sound bridge, music hit, match cut, speed ramp, freeze, subtitles, end card, or text that should be added in editing rather than generated in-frame.

## Transition Taxonomy

### Invisible Continuity Cuts

Use these when the audience should follow story, action, and emotion without noticing the edit.

- `Hard cut`: clean direct cut. Best for dialogue, action consequence, comedy contrast, and modern ad rhythm.
- `Cut on action`: cut during movement. Best for walking, opening doors, turning, grabbing, striking, sitting, product operation.
- `Eye-line cut`: character looks, then cut to what they see. Best for discovery, suspense, desire, product reveal.
- `Reaction cut`: cut from action to the person affected by it. Best for dialogue, comedy, product proof, emotional consequence.
- `Insert cut`: cut to hand, object, tool, button, product detail, document mark. Best when the viewer must verify a decisive detail.
- `Cutaway`: cut to environment or related detail while sound continues. Best for documentary, memory, emotional breathing room.

### Sound-Led Transitions

Use these when the emotional or informational continuity should be carried by audio.

- `J-cut`: the next shot's sound begins before the image changes. Best for interviews, dialogue pressure, location entry, memory trigger.
- `L-cut`: the previous shot's sound continues over the next image. Best for emotional aftermath, irony, narration, unresolved feeling.
- `Sound bridge`: an environmental sound, music cue, voice, machine sound, breath, footstep, or product sound connects scenes.
- `Audio match`: match similar sounds across scenes, such as keyboard typing to rain, heartbeat to bass hit, door slam to drum hit.

### Visual Match Transitions

Use these when two shots can be joined by shared shape, motion, color, texture, or object logic.

- `Match cut`: same action, object, or composition across two scenes. Best for time jump, growth, transformation, product before/after.
- `Graphic match`: line, circle, symmetry, color field, silhouette, or frame shape matches. Best for ads, title sequences, poetic montage.
- `Object match`: one object becomes another object with similar position or gesture. Best for memory, product metaphor, education explainers.
- `Movement match`: camera or subject moves in the same direction across the cut. Best for travel, pursuit, workflow, transformation.

### Expressive Transitions

Use these only when the transition itself should be felt.

- `Whip pan`: fast pan with motion blur hiding the cut. Best for energetic comedy, quick location shift, sporty ads, chaotic discovery.
- `Occlusion cut`: foreground object/person/wall/vehicle covers lens and hides cut. Best for fake one-take, street scenes, walk-throughs, spatial transitions.
- `Push-through`: camera pushes into darkness, fabric, door, screen, object surface, then exits in the next scene. Best for immersive ads and memory entry.
- `Dissolve`: soft overlap. Best for time passing, memory, dream, loss, gentle comparison.
- `Fade to black/white`: chapter break, death, sleep, major time gap, ending. Use sparingly.
- `Flash cut`: brief white/black/image flash. Best for trauma, impact memory, shock, glitch, hard realization.
- `Jump cut`: intentional time skip within the same setup. Best for anxiety, vlog, comic impatience, routine compression.
- `Speed ramp`: accelerate/decelerate action around a cut. Best for sports, product motion, fight impact, dynamic reveal.

## Scene Rules

### Dialogue

Protect relationship before emotion. Establish who is where, then move closer only when the scene tightens.

Prefer hard cut, J-cut, L-cut, reaction cut, and eye-line cut. Do not cut every line mechanically. Cut when the listener's reaction matters more than the speaker's mouth.

Prompt pattern:

```text
Use a restrained J-cut: the next speaker's breath and first word enter while the camera stays on the listener's close-up. Cut only after the listener's eyes shift, keeping the same left-right relationship and matching eye-line direction.
```

### Action / Chase / Fight

Cut on movement, not after movement dies. Preserve screen direction and physical readability. Use wider shots for body mechanics and inserts only for decisive contact, grip, foot landing, weapon/tool line, or impact consequence.

Prompt pattern:

```text
Cut on action as the character's right foot lands and the body continues moving left to right. The next shot begins mid-stride from a lower side angle, maintaining the same movement direction, with footsteps and breath bridging the cut.
```

### Suspense / Horror

Delay information. Use sound before image. Show reaction before source. Avoid revealing geography too early unless the suspense comes from the viewer knowing more than the character.

Prompt pattern:

```text
Let the hallway sound enter as a sound bridge while the camera holds on the character's still face. After a one-beat delay, cut to the door handle close-up; focus shifts from the handle to the dark gap under the door, without revealing the source.
```

### Memory / Dream / Inner State

Use a trigger: object, sound, gesture, color, line of dialogue, or repeated composition. Do not rely on generic blur alone.

Prompt pattern:

```text
Match cut from the adult hand touching the cracked glass to a childhood hand holding the same-shaped glass in the same frame position. Add a slow dissolve and let the past room tone fade in before the image fully changes.
```

### Product / Commercial

Every cut must clarify desire, operation, proof, or result. Do not hide product shape or function behind flashy motion. Inserts must verify contact, material, button press, screen response, packaging open, texture, or before/after result.

Prompt pattern:

```text
Cut from a 50mm hand-use medium shot to a 100mm macro insert exactly as the thumb presses the button. Rack focus from fingertip to the product indicator, then match cut the circular indicator light to the next scene's circular morning light.
```

### Education / Consulting / Explainer

Use transitions to clarify thinking: problem -> diagnosis -> model -> example -> application. Use graphic match, object match, cutaway, or table/card inserts added in post. Avoid generating long readable text inside frames.

Prompt pattern:

```text
Use an L-cut from the consultant's diagnosis line into a close-up of notes being grouped on the desk. The marker movement creates the cut point, then a simple diagram is added in post rather than generated inside the frame.
```

### Documentary / Interview

Let voice carry the structure. Use cutaways as evidence, not decoration. Hands, old objects, rooms, documents, routes, work surfaces, and ambient sounds should connect speech to reality.

Prompt pattern:

```text
Keep the interview voice as an L-cut over a slow 35mm lateral shot of the old workspace. Cut back to the interview only when the speaker's hand touches the photo, using the touch as the physical return point.
```

### Comedy

Use hard cuts, jump cuts, and timing holds. The cut point is often the punchline. Do not dissolve into jokes.

Prompt pattern:

```text
Hold the character's confident line for half a beat, then hard cut to a wider shot revealing the immediate failure. Keep the audio contrast sharp: quiet confidence into loud practical chaos.
```

### Montage / Time Compression

Use repeated action, repeated frame position, music beat, or object continuity. A montage should compress a process, not become unrelated pretty shots.

Prompt pattern:

```text
Build a rhythmic montage connected by repeated hand motions: page turns, pen marks, keyboard hits, and clock movement. Cut each shot on the impact sound, increasing tempo while preserving the same desk-side screen direction.
```

## Cut Point Rules

Use concrete cut points:

- hand contacts object;
- button reaches full press;
- door crosses frame edge;
- subject passes behind foreground occlusion;
- foot lands;
- eyes shift;
- face reaction changes;
- line ends but breath remains;
- object fills the lens;
- camera pan reaches peak blur;
- sound hit lands;
- product result appears;
- character exits frame;
- next location sound becomes identifiable.

Avoid vague cut points:

- "transition smoothly";
- "make it cinematic";
- "switch to the next scene";
- "use a cool transition";
- "cut naturally";
- "高级转场".

## Prompt Standards

Every transition prompt must include:

- outgoing shot action;
- incoming shot action;
- transition type;
- exact cut point;
- continuity carrier;
- sound behavior when useful;
- camera or movement direction if it affects continuity;
- negative constraints for likely failures.

Good format:

```text
As the character's hand closes around the suitcase handle, cut on action to the next shot where the same hand pulls open a taxi door. Keep the movement direction left to right, bridge the cut with the suitcase zipper sound becoming traffic noise, and avoid any jump in hand position or screen direction.
```

## Negative Prompt Patterns

Use concise failure constraints:

```text
Avoid screen-direction flip, broken eye-line, mismatched hand position, product shape drift, sudden lighting-temperature jump, random whip pan, decorative transition unrelated to action, motion blur hiding the key product detail, and jump cut that removes the decisive contact beat.
```

For AI video:

```text
No sudden scene morph, no extra limbs, no object teleportation, no unreadable in-frame text, no product geometry flicker, no random camera shake, no transition that changes clothing, no inconsistent background layout.
```

## Quality Bar

Before finalizing, verify:

- every cut has a story function;
- the chosen transition is simpler than a decorative alternative unless expression is required;
- continuity is carried by action, sound, eye-line, object, screen direction, or rhythm;
- the cut point is concrete and visible;
- the transition does not hide required proof, product operation, body mechanics, or emotional reaction;
- sound bridges are specified when they can solve continuity better than visual effects;
- prompts are copy-ready and do not expose internal analysis;
- the final plan can be edited from separately generated clips.
