---
name: fight-choreo
description: Create Chinese cinematic fight and action choreography prompt plans for AI video from scripts, scene names, beats, rhythm words, or vague action descriptions. Use when the user asks for 打斗.skill, 打斗动作, 动作编排, 武术指导, 姿势动捕, 动作提示词, 动作场面, 连招, 擒拿, 群战, 追逐, 冷兵器, 枪战前动作, 反杀, 逃脱, 动作镜头, or wants a script fight/action beat turned into professional body mechanics, continuity, camera impact, and copy-ready video prompts.
---

# Fight Choreo

## Core Rule

Turn vague action beats into executable cinematic action design. Never output only "激烈打斗" or generic action adjectives.

Every action plan must preserve the four-beat action grammar:

1. setup: eye-line, stance, foot anchor, distance, threat direction;
2. force: punch, kick, grab, throw, dodge, weapon line, impact, or escape;
3. reaction: opponent head/shoulder/hip/foot response, object movement, spatial result;
4. recovery: protagonist balance, guard, landing, weapon position, transition into next beat.

Prefer one clear visible action chain per 4-8 second prompt. Split complex scenes into multiple prompts instead of forcing too many beats into one generation.

For stylized, fantasy, wuxia, superhero, or anime-inspired combat, keep the same body-logic standard. Supernatural movement still needs a visible source of force, a clear travel direction, a hit or pressure point, a reaction, and a recovery or landing state. Do not let VFX replace body mechanics.

## Reference Loading

- For action category selection and 50 action classes, read `references/action-types-50.md`.
- For rhythm words, camera impact, output format, and negative prompts, read `references/rhythm-camera-prompts.md`.
- If the user asks for only a short answer, use the references internally and output a compact result.
- If the user asks for a full prompt plan, include category diagnosis, action chain, camera plan, prompt, and negative prompt.

## Workflow

1. Parse the script beat:
   - location and spatial constraints;
   - number of people;
   - weapons or props;
   - protagonist state: dominant, pressured, injured, hidden, escaping, showing skill;
   - rhythm words: short, hard, sudden, messy, elegant, oppressive, comic, realistic, brutal, clean, game-like.
2. Choose one primary action class and, if needed, one support class from `action-types-50.md`.
3. Convert abstract rhythm into body mechanics:
   - which foot anchors;
   - which hand attacks, guards, grabs, or redirects;
   - where the opponent's weight goes;
   - what object, wall, floor, door, table, railing, or vehicle receives the impact.
   - for airborne or VFX-driven action, what force lifts, stops, pulls, crushes, redirects, or drops the body and weapon;
   - where the body and weapon end after the force, and how the next shot inherits that position.
4. Design the camera around the hit point:
   - wide enough to read body mechanics;
   - close enough to feel impact;
   - one motivated camera movement;
   - one sound emphasis at the decisive beat.
5. Write a copy-ready Chinese AI video prompt with continuity locks.
6. Add a concrete negative prompt targeting the likely failures of this scene.
7. When revising an existing action prompt, do not stop after rewriting the paragraph. Re-check the revised version against this skill's Quality Bar and update any local shot checklist or project rule file that still points to the old action logic. If the revision exposes a reusable failure pattern, such as missing movement bridges between beats, add that pattern to the relevant rule/checklist; if it is only a one-off story detail, keep it local to the project.

## Output Format

Use this structure unless the user requests a different format:

### 动作场景判断

- 场景类型：
- 节奏关键词：
- 推荐动作类型：
- 动作目标：
- 主要风险：

### 动作链设计

Write one continuous paragraph. Include setup, force, reaction, and recovery. Mention feet, hands, body weight, opponent reaction, and spatial result.

### 镜头冲击力

Specify shot size, lens feel, camera movement, hit-point emphasis, lighting, materials, and action-synced sound.

### AI 视频提示词

Write one copy-ready Chinese prompt. Include:

- stable subject description;
- one visible action chain;
- setting and spatial relation;
- camera and movement;
- light, color, texture, mood;
- sound cues;
- professional choreography constraints.

### 负面提示词

Forbid broken motion, floating bodies, warped limbs, weapon morphing, random camera shake, scene jumps, outfit drift, unclear multi-person blocking, excessive gore, and any scene-specific failure.

### 可选剪辑建议

When the scene is longer than 8 seconds, split it into 4-8 second shots and name the edit bridge: sound bridge, match cut, object pass, wall impact, hand movement, eye-line, weapon clash, fall, door open, or foreground wipe.

## Quality Bar

Before finalizing, check:

- The action can be performed by a trained stunt performer or mocap actor.
- The opponent reaction makes the attack believable.
- The camera does not hide the decisive body mechanics.
- The scene has a clear movement axis.
- The attack source, attack target, force direction, recoil direction, and landing/recovery point are not reversed between shots.
- Revised action prompts include explicit movement bridges between major beats: what carries the body/camera/weapon from one beat into the next, such as recoil, weapon bind, fall line, body rotation, object pass, impact rebound, or landing slide. If a prompt jumps from close combat to aerial, wide, macro, or landing imagery without a visible carrier, it fails continuity.
- Impact is proven by contact, deformation, slide, stumble, cloth pull, weapon bind, ground mark, environmental reaction, or a held recovery frame; do not rely only on light bursts.
- The prompt is generatable as one clip, or split into multiple clips.
- Continuity locks repeat the same clothing, weapon hand, location, lighting, and movement direction.
