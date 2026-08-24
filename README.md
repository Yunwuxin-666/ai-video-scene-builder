# Film Skill Suite

This repository is a version-controlled snapshot of the film, AI-video,
character-concept, environment-concept, camera, lighting, style, emotion, timing, sound, editing,
action, and VFX skills normally installed under:

`%USERPROFILE%\.codex\skills`

`orchestrate-creative-production` is included only as the validated upstream
cross-media routing dependency of `film-prompt-producer`.

## Source of truth

The live Codex skills normally remain under `%USERPROFILE%\.codex\skills`.
This repository is an independent snapshot and does not automatically change
the live skills. Future edits should explicitly choose whether this repository
or the live directory is the authoring source before adding synchronization.

## Simplified distribution

`packages/wuxin-film-skill` is the single-entry **Wuxin Film Skill** distribution
for platforms that accept one `SKILL.md` folder. It consolidates the suite into
one progressively disclosed router and stays within a 50-Markdown-file package
limit. Use the full repository when maintaining individual departments; use the
simplified distribution when uploading or sharing one portable skill.
The portable package contains no more than 50 Markdown files, and every
individual file stays below 20,000 characters.

## Validation

Run the suite contract validator from PowerShell:

```powershell
.\film-prompt-producer\scripts\validate-film-skill-contracts.ps1 -SkillRoot $PWD
```

## Included skill families

- Production coordination and platform compilation
- Storyboard and narrative structure
- Character, costume, and concept design
- Functional environment concept design for film, animation, and games
- Camera, lighting, style, emotion, timing, music, and editing
- VFX and fight choreography
- Animation performance and direction boundaries
- Cross-media routing boundary dependency
