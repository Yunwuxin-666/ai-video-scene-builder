# Seedance 2.5 platform profile

Use this profile only when the user asks for Seedance 2.5, 即梦 Seedance 2.5, 豆包专业版 Seedance 2.5, or a 2.5-ready prompt.

## Confirmed as of 2026-07-31

- Seedance 2.5 is officially released and is rolling out to 即梦 AI and 豆包专业版.
- A single generation can reach 30 seconds.
- Multi-round extension is supported.
- A single task can reference up to 30 images, 10 videos, and 10 audio clips.
- Timestamp control can direct story, viewpoint, camera movement, sound, and pacing.
- Targeted post-generation editing can change a selected segment's character, action, sound, or story while protecting continuity.
- Enhanced reference modes include clay/white-model, motion, creative, green-screen, viewpoint, and camera-movement references.
- Official Volcano Ark API service is announced as coming soon. Do not invent an official model ID, price, rate limit, endpoint, or parameter schema.

## Do not claim

- Do not state that Seedance 2.5 has confirmed native 4K output unless current official platform documentation explicitly says so.
- Do not describe multi-round extension as one-request multi-minute generation.
- Do not turn the 50 total references into an unrestricted pool; preserve 30 image, 10 video, and 10 audio type limits.

## Compile order

1. global identity, world, product, and visual locks;
2. reference binding table with `controls`, `must_ignore`, and priority;
3. generation mode: segmented clips, 30-second continuous unit, extension, or targeted edit;
4. timestamp phases based on natural state changes;
5. start state, central visible action, and end state for each phase;
6. camera, lighting, and sound changes only where they change;
7. continuity inheritance and protected fields;
8. local and global negative constraints.

## Long-unit decision

Prefer a 30-second continuous unit when the subject, action objective, spatial path, lighting logic, and visual law remain coherent.

Prefer segmented generation for:

- hard location or time jumps;
- readable text, precise UI, payment, or small hand operations;
- product macro and packshot geometry;
- dense multi-person interaction;
- complex physical contact;
- shots that require different visual laws.

Do not force a one-take merely because 30 seconds is available.

## Reference binding

Bind each source once:

```text
@图片1 controls protagonist face and hair; must ignore clothing, background, and lighting.
@视频1 controls body path and action timing; must ignore identity and visual style.
@音频1 controls protagonist voice; must ignore embedded background music.
```

If two sources control the same field, stop and report the conflict. Do not blend.

## Targeted edit

State:

- editable target;
- protected camera motion;
- protected body motion and timing;
- protected background geometry;
- protected light direction, shadows, reflections, and contact points;
- protected sound or voice when it must remain unchanged.

Describe only the requested change.
