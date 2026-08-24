# aivideo-prompt

Codex skill for turning video ideas, product briefs, book/theme challenges, and reference-film analysis into executable Chinese AI video prompt packages.

## What It Produces

- Shot-by-shot storyboards with 4-8 second generatable clips.
- Chinese text-to-video and image-to-video prompts.
- Commercial short-film settings and Apple-style ad structures.
- Director-facing shot descriptions with camera, light, sound, continuity, and edit notes.
- Reference-video breakdown guidance that separates verified observation from inference.

## Use Cases

- `AI 视频提示词`
- `分镜`
- `镜头表`
- `图生视频`
- `文生视频`
- `场景包`
- `拉片`
- `广告短片`
- `苹果风格广告`
- `平台挑战短片`

## Structure

- `SKILL.md`: skill trigger, routing, output rules, prompt standards, and quality checks.
- `references/aivideo-output-format.md`: canonical output template and shot-duration guidance.
- `references/commercial-film-settings.md`: ad brief fields and commercial logic.
- `references/apple-style-commercials.md`: Apple-like commercial structure and failure modes.
- `references/apple-storyboard-production-rules.md`: production rules for realistic Apple-style revisions.
- `agents/openai.yaml`: OpenAI interface metadata.

## Install

Copy this folder into your Codex skills directory:

```powershell
Copy-Item -Recurse . "$env:USERPROFILE\.codex\skills\aivideo-prompt"
```

Then ask Codex to use `$aivideo-prompt`.
