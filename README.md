# Film Skill Suite

This repository is a local version-controlled snapshot of the film, AI-video,
character-concept, camera, lighting, style, emotion, timing, sound, editing,
action, and VFX skills installed under:

`C:\Users\Administrator\.codex\skills`

`orchestrate-creative-production` is included only as the validated upstream
cross-media routing dependency of `film-prompt-producer`.

## Source of truth

The live Codex skills remain under `C:\Users\Administrator\.codex\skills`.
This repository is an independent snapshot and does not automatically change
the live skills. Future edits should explicitly choose whether this repository
or the live directory is the authoring source before adding synchronization.

## Validation

Run the suite contract validator from PowerShell:

```powershell
.\film-prompt-producer\scripts\validate-film-skill-contracts.ps1 -SkillRoot $PWD
```

## Included skill families

- Production coordination and platform compilation
- Storyboard and narrative structure
- Character, costume, and concept design
- Camera, lighting, style, emotion, timing, music, and editing
- VFX and fight choreography
- Animation performance and direction boundaries
- Cross-media routing boundary dependency

