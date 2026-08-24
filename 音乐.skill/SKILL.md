---
name: 音乐.skill
description: 影视声音部门 skill，负责环境声、拟音、情绪声层、转场、BGM、静默和 cue timing。Use when the user explicitly asks for 音乐.skill, 音效, 声音设计, BGM, 配乐, Foley, sound design, music cue, or soundtrack prompt. In a film-prompt-producer workflow, return sound patches only and preserve every visual and story field.
---

# 音乐.skill

## Routed Mode

When FilmSpec or a producer handoff is present:

- Change only `sound_patch`.
- Key every cue by shot or time-range ID.
- Preserve story, action, duration, camera, lighting, style, and VFX.
- Report timing conflicts instead of changing the visual edit.
- Do not copy the full sound bible into every visual prompt.

Use full sound-package output only in explicit standalone mode.

## Mission

Turn scripts, storyboards, rough scene ideas, reference frames, AI video prompts, commercials, or finished shot lists into executable cinematic sound design and BGM packages.

Do not only list sound names. Build the sound logic: environment bed, action/Foley details, emotional sound layer, music cue, transition sound, silence, entry/exit timing, and negative constraints.

## Load References

Load only what is needed:

- For concrete scene presets, read `references/sound-scene-patterns.md`.
- For copy-ready output formats and prompt templates, read `references/prompt-templates.md`.

## Core Workflow

1. Identify the content type: single scene, full storyboard, ad film, product shot, dialogue scene, action sequence, documentary, horror/suspense, emotional drama, course/education video, or AI video generation prompt.
2. Determine the scene function before choosing music: reveal, pressure, intimacy, proof, transformation, rhythm, danger, memory, luxury, comedy, knowledge clarity, or completion.
3. Separate sound into five layers:
   - `环境底噪`: place, air, weather, machines, crowd, city, nature, room tone.
   - `动作拟音`: footsteps, fabric, props, hand contact, vehicles, buttons, pages, tools, breath.
   - `情绪声音`: low-frequency rumble, heartbeat, tinnitus, reverse swell, metal scrape, air drop, sub hit, silence.
   - `转场声音`: whoosh, riser, downer, impact, glitch, match-cut sound bridge, hard cut silence.
   - `BGM`: instrumentation, tempo, rhythm density, harmony, melody amount, emotional arc, entry/exit point.
4. Decide whether the scene needs music at all. If realism, tension, grief, or documentary credibility is stronger without music, use sparse sound and silence.
5. Match BGM to image rhythm:
   - Slow camera / inner emotion: sustained pads, piano, cello, sparse percussion.
   - Fast montage / sports / product proof: pulse, bass, percussion, ostinato, precise hits.
   - Luxury product: clean low end, minimal electronic, tactile micro-sounds.
   - Education/course clarity: restrained piano, warm pad, subtle pulse, no heroic corporate drums.
   - Horror/suspense: atonal texture, drone, reverse swell, silence, no cheap jump-scare scream.
6. Add music cue timing:
   - `入点`: where music enters and why.
   - `增长`: where rhythm, harmony, or low end increases.
   - `落点`: where the strongest beat lands.
   - `退出`: whether music fades, cuts, or leaves silence.
7. For full storyboards, produce a cue sheet. Each shot should include sound role, key effects, music state, transition, and mix priority.
8. If the user references a known film, song, composer, or brand, extract the mechanism only: tempo, instrumentation, space, rhythm, density, mix, emotional function. Do not ask for or reproduce copyrighted melody or lyrics.
9. Keep outputs generation-ready. Avoid empty words such as "高级感", "电影感", "震撼", or "氛围拉满" unless translated into concrete sound decisions.

## Output Modes

### Scene Sound Package

Use for one scene or one visual prompt.

Output:

1. `声音判断`: one short paragraph explaining the emotional and narrative function of the sound.
2. `音效组合`: table with environment, Foley, emotional layer, transition, and silence.
3. `BGM 适配`: style, instruments, tempo, melody density, entry/exit, mix priority.
4. `可复制提示词`: one complete prompt for cinematic sound/BGM generation.
5. `负面提示词`: what to avoid.

### Storyboard Cue Sheet

Use for multi-shot scripts, ads, or AI video shot lists.

Output:

1. `整体声音策略`: sonic identity, music arc, mix principle.
2. `分镜声音表`: shot, visual beat, sound effects, BGM state, transition, mix priority.
3. `全片 BGM 结构`: intro, build, release, end card.
4. `逐段提示词`: copy-ready prompt per scene or per shot group.
5. `后期混音建议`: dialogue/music/effects priority, silence points, platform loudness concerns.

### BGM Adaptation

Use when the user asks what music fits a scene, ad, product, course, or emotion.

Output:

1. `不先选风格，先选功能`: explain what the music must do.
2. `3 个配乐方向`: conservative, cinematic, distinctive.
3. `每个方向的声音配置`: instruments, tempo, rhythm, emotion, risk.
4. `推荐方向`: choose one and explain why.
5. `生成提示词`: music-only prompt and full sound-design prompt.

### Prompt Repair

Use when the user already has an audio/music prompt.

Output:

1. `问题诊断`: identify generic wording, missing timing, weak sound layers, wrong music function, or mix conflict.
2. `修正原则`: what to add/remove.
3. `重写版本`: copy-ready prompt.
4. `负面提示词`: concrete failures to avoid.

## Default Quality Gate

Before finalizing, check:

- The sound design serves the scene function, not a generic mood.
- Environment, Foley, emotional layer, transition, and BGM are separated.
- Music has entry, development, landing point, and exit.
- Silence is considered as a deliberate sound choice.
- The prompt avoids vague praise words and specifies instruments, tempo, density, space, mix, and negative constraints.
- Dialogue or narration is not buried by music.
- Product, course, or brand films sound credible, not like stock corporate music.
