# Game / Anime Combat VFX Continuity

Use this reference only for stylized combat, xianxia/wuxia magic, game ultimates, anime-style spell circles, boss-fight effects, or large-scale supernatural fights. Treat it as a timing and continuity guide, not as a fixed blue-gold circle style.

## Core Mechanism

Strong combat VFX feels continuous because each layer has an anchor, a birth order, a force direction, and a residue. Do not describe "cool light effects" as decoration. Build the effect as a chain:

1. Trigger anchor: foot impact, weapon sweep, palm seal, staff strike, blade clash, projectile hit, or falling body.
2. Pre-contact signs: ground cracks, dust lift, cloth pull, sparks gathering, thin glyph strokes waking up, small particles orbiting.
3. Main path: weapon arc, energy slash, flying projectile, pressure wave, or body trajectory.
4. Geometry lock: ground circle, polygon cage, rotating ring, vertical column, dome, door, seal, grid, chain, or orbital track appears after the trigger, not before it.
5. Peak impact: collision flash, deformation, ring expansion, shield dent, stone fracture, air compression, or vertical beam.
6. Release: trailing ribbons, broken glyph fragments, delayed particles, falling debris, fading afterimage, residual glow on ground or weapon.

## Layer Stack

Use 3-5 layers, each with a different role. Avoid turning all layers on at once.

- Body/weapon layer: silhouette, weapon edge, limb line, strike direction. This must stay readable.
- Near-field layer: arc trail, sparks, dust, cloth and hair response within one body length.
- Ground/spatial layer: circle, rune track, crack network, snow/dust ring, reflected light on floor.
- Mid-air geometry layer: polygon cage, orbiting ring, rotating seal, chain, floating glyph fragments.
- Macro environment layer: dome, vertical beam, cloud vortex, mountain silhouette, collapsing snow line, building-scale shadow or shockwave.

## Timing Pattern

For a 4-8 second shot:

```text
0-20% anchor wakes up, small signs gather
20-45% weapon/body/projectile travels, trail forms
45-65% geometry locks and collision happens
65-85% shockwave/deformation expands through ground, air, cloth, debris
85-100% residue settles into a clean cut point
```

For a 10-15 second climax:

```text
0-2s local trigger and takeoff
2-5s fast travel through layered effects
5-8s first collision and near-body contact
8-11s macro pullback or aerial reveal, environment-scale spell opens
11-14s decisive counterforce, rings/domes/columns deform
14-15s landing or residue lock for edit continuity
```

## Camera Use

- Use high-speed POV or close follow for travel, but insert one macro-scale reveal where characters become small against the spell field.
- Keep the hit point visible during collision. Do not hide contact inside bloom, smoke, or pure white flashes.
- Let the camera pass through layers in order: weapon trail -> ground ring -> mid-air geometry -> macro dome/beam -> residue.
- Macro-scale reveals must be motivated by a visible movement bridge, such as a weapon arc lifting the camera, shield recoil throwing the camera sideways, body impact converting into an aerial spiral, falling force pulling the camera down, or debris/energy flow carrying the viewpoint. Do not jump from close combat to bird's-eye spectacle without a carrier.
- Use speed ramps only at named contact points. If every moment is slow motion, the effect loses force.

## Prompt Modules

Layered spell activation:

```text
法术不是凭空亮起，而是从明确接触点逐层生成：先有武器/脚步/手印处的细小火花和地面裂纹，随后贴地能量弧沿圆形或扇形轨道扩散，几何法阵线条像被点亮的墨线逐段连接，外圈符纹慢半拍旋转，中层半透明多边形结界或轨道升起，最后竖向光柱、穹顶或云层涡旋打开。每一层都有不同速度、透明度、厚度和余光，角色剪影始终可读。
```

Large-scale xianxia combat:

```text
宏观修仙战斗特效，角色保持小比例，招式尺度覆盖山门、长阶、云层和远山；剑气/法杖/掌印从明确动作点发出，先切开近处雪粉和地面裂缝，再推动阵环、经幡、屋檐积雪和云层旋涡，远处山体与建筑只产生受力裂纹、震落和剪影晃动，不做无意义爆炸。特效层级从近身撞点扩展到地面法阵、半空几何结界、天穹光柱和环境冲击波，最后留下可剪辑的余光、碎片和尘雪沉降。
```

Continuous game-ultimate style:

```text
游戏大招式连续演出，但保持影视物理逻辑：起手有短暂蓄力和气流回吸，主攻击沿清楚弧线或直线释放，命中点出现短促高对比冲击帧，随后护盾/法阵/地面发生可见形变，二级粒子和符纹碎片延迟飞散，最后残光沿地面轨道熄灭。不要只堆满屏光效，必须能看清起手、轨迹、命中、反弹和收束。
```

## Negative Checks

- No pasted decorative circle behind the character.
- No all-at-once effect bloom without timing.
- No free-floating symbols without an anchor.
- No pure white impact frame that hides the contact point.
- No character swallowed by glow.
- No random readable text or modern UI unless the world supports it.
- No unrelated explosions when the effect should be pressure, seal, wind, blade, frost, electricity, or gravity.
- No macro effect without environment reaction.
- No environment destruction without a visible force path and scale reason.
- No revised combat prompt should pass without a continuity self-check: trigger anchor, travel path, collision/rebound, macro reveal, and landing/residue must connect in order. If the revision adds a new broad-view VFX beat, state what action or force carries the viewer into and out of that beat.
