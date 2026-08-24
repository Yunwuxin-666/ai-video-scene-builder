# VFX Effect Library

Use this reference selectively. Pick effect families that fit the user's script, product, setting, and camera language.

## 1. 火焰 / 爆炸 / 热浪

Use for automotive, action, game trailers, sports power, industrial energy, and danger.

- Material: white-yellow hot core, orange flame tongues, dark smoke, ash, sparks, soot, heat shimmer.
- Interaction: firelight reflects on metal/glass/skin; smoke rolls around obstacles; shockwave pushes dust, paper, water, fabric, or debris; nearby surfaces can scorch.
- Plausibility: define fuel, ignition point, pressure source, blast direction, and safety distance.

Prompt module:

```text
真实火焰特效，白黄色高温核心，橙红色火舌向外翻卷，黑灰烟柱随热空气上升，冲击波贴着地面推出尘土和碎屑，附近金属/玻璃/车漆反射跳动火光，背景因热浪产生轻微折射扭曲，镜头有短暂震动，爆炸方向和压力释放清楚，影视级 pyro simulation。
```

Negative:

```text
贴图感火焰、无烟尘、无光照反应、凭空爆炸、火焰遮挡主体、卡通爆炸。
```

## 2. 烟雾 / 雾气 / 蒸汽

Use for perfume, beauty, coffee, food, mystery, stage atmosphere, industrial spaces, cold/hot contrast.

- Material: low-lying mist, thin steam curls, heavy smoke, colored smoke, volumetric haze.
- Interaction: fog splits around products; steam rises from heat source; smoke catches rim light; airflow bends vapor; density changes with distance.
- Plausibility: assign temperature, airflow, source, density, and scale.

Prompt module:

```text
低位雾气沿地面/台面缓慢流动，靠近主体时被轮廓自然分流，雾层有厚薄变化，边缘被侧逆光勾亮，空气中有细微体积光，烟雾不遮挡产品标识，随环境气流形成柔和旋涡，真实 volumetric fog。
```

Negative:

```text
灰色蒙版、烟雾无方向、遮住主体、没有光线穿透、廉价梦幻烟。
```

## 3. 水 / 液体 / 飞溅

Use for drinks, sports, skincare, cleaning, kitchen, rain, ocean, freshness.

- Material: water, milk, serum, oil, honey, chocolate, ink, gel; distinguish viscosity, transparency, surface tension, droplet size.
- Interaction: droplets cling to surfaces; liquid leaves wet trails; splash follows impact; backlight outlines water; gravity pulls droplets down.
- Plausibility: define container, impact velocity, viscosity, collision surface, and scale.

Prompt module:

```text
高速液体飞溅特效，大水片从撞击点向外展开，细小水珠和水雾形成层次，液体边缘被逆光照亮，水滴撞到产品表面后形成挂水和流痕，透明液体折射背景，飞溅方向符合主体运动和重力，真实流体模拟。
```

Viscous liquid module:

```text
高粘度液体像丝带一样缓慢拉伸，表面有连续高光，液滴分离前出现细长拉丝，内部可见微小气泡，接触玻璃/皮肤/包装后留下湿润光泽，运动优雅克制，商业级液体材质。
```

## 4. 粒子 / 粉末 / 光尘

Use for makeup, tech assembly, magic-real concept, sports impact, data visualization, brand energy.

- Material: mineral powder, dust, sand, glitter, glowing particles, data points, pollen.
- Interaction: particles respond to airflow, impact, magnetic fields, sound waves, or product motion; cast tiny shadows or glow only when motivated.
- Plausibility: define particle size, density, force field, and formation rule.

Prompt module:

```text
细密粒子在空气中按明确力场运动，大小和透明度有自然差异，靠近主体边缘时被气流带出柔和轨迹，局部粒子聚集形成轮廓，远处粒子逐渐稀疏，侧光让粒子产生细小高光和阴影，真实 particle simulation。
```

## 5. 尘土 / 沙石 / 地面交互

Use for off-road vehicles, shoes, combat, sports landings, desert scenes, collapse.

- Material: dry dust, wet mud, sand, gravel, concrete powder.
- Interaction: tires throw dust backward; feet compress ground; heavy objects create radial cracks; dust stays dense near source then diffuses.
- Plausibility: match ground material and weather.

Prompt module:

```text
地面尘土从接触点被力量推出，近处颗粒厚重贴地翻滚，远处逐渐变成轻薄尘雾，碎石受冲击弹起后按重力落下，鞋底/轮胎/物体与地面有清晰压痕和摩擦痕，低角度镜头强调力量方向。
```

## 6. 破碎 / 坍塌 / 碎片

Use for phones, cars, sports impact, action, transformation, breakthrough metaphors.

- Material: glass, concrete, ceramic, metal, ice, wood; each breaks differently.
- Interaction: glass refracts and reflects; concrete creates dust; metal bends and sparks; wood reveals fibers; ice is translucent and wet.
- Plausibility: show impact point, crack propagation, mass, gravity, and secondary debris.

Prompt module:

```text
真实刚体破碎特效，裂纹从冲击点向外放射扩散，大块碎片先被抛出，细碎屑和粉尘随后跟随，玻璃碎片产生折射和锐利高光，混凝土碎块带灰尘和粗糙断面，碎片旋转方向符合撞击力和重力，主体保持清晰可见。
```

## 7. 电流 / 闪电 / 能量弧

Use for EVs, electronics, AI devices, game weapons, power-up moments, audio, charging scenes.

- Material: blue-white arcs, plasma glow, tiny sparks, luminous circuits, electromagnetic pulse.
- Interaction: electricity follows metal seams, wet surfaces, cables, circuit paths, or conductive edges; creates reflections and small contact sparks.
- Plausibility: give it a conductive path and avoid random lightning in empty air.

Prompt module:

```text
蓝白色电弧沿金属缝隙/线路/湿润表面快速游走，只在接触点产生细小火花，电光在黑色金属、玻璃和积水上形成冷色反射，能量脉冲有节奏地向前推进，周围空气出现轻微辉光和电磁扰动，电流路径清楚且物理可信。
```

## 8. 冰霜 / 冷凝 / 雪

Use for beverages, refrigerators, air conditioners, winter wear, skincare freshness.

- Material: frost crystals, condensation drops, crushed ice, snow powder, cold vapor.
- Interaction: frost grows from cold surfaces; droplets slide on metal/glass; vapor drifts downward or outward depending on temperature; ice refracts light.
- Plausibility: define cold source and temperature contrast.

Prompt module:

```text
低温特效，细小霜晶沿金属/玻璃表面逐渐生成，冷凝水珠汇聚后缓慢滑落，碎冰粘在底部边缘，冷白色蒸汽贴近主体漂移，冰块湿润透明并反射环境光，整体冷感来自材质、雾气和水珠，不依赖单纯蓝色滤镜。
```

## 9. 全息 / UI / 数据可视化

Use for AI, SaaS, education platforms, finance, automotive HUD, medical tech, smart devices.

- Material: translucent glass UI, blue-white light lines, floating nodes, depth layers, scan grids.
- Interaction: UI responds to hand, eye, device, dashboard, tablet, or projection surface; light spills onto fingers and nearby surfaces.
- Plausibility: anchor holograms to a device, lens, dashboard, projection volume, or AR viewpoint.

Prompt module:

```text
半透明全息界面从设备上方投射出来，节点和线条有明确层级和透视深度，手指滑过时面板产生轻微延迟和光晕反馈，全息冷光照亮指尖和桌面，屏幕/玻璃/中控台出现淡淡反射，UI 与真实场景遮挡关系正确，科技感克制而高级。
```

## 10. 变形 / 重组 / 材质转换

Use for product reveal, brand upgrade, phone/car/shoe assembly, luxury, sci-fi transformation.

- Material: liquid metal, carbon fiber, sand, pixels, cloth, ceramic, glass, foam, particles.
- Interaction: material changes need continuity: droplets merge, fibers weave, particles assemble, edges harden, surface shader changes.
- Plausibility: establish transformation rule and final object silhouette.

Prompt module:

```text
材质重组特效，原始材料先沿主体轮廓聚集，再从边缘到核心逐渐成型，液态部分有表面波纹和高反射，硬化区域转为清晰金属/玻璃/织物材质，微小残余颗粒回流到主体表面，转化过程连续、可追踪、符合产品结构。
```

## 11. 布料 / 柔体 / 丝绸

Use for fashion, jewelry, perfume, home textiles, premium reveals, Chinese aesthetics.

- Material: silk, velvet, cotton, leather, mesh, gauze; specify weight, weave, sheen, friction.
- Interaction: cloth wraps edges, creates wrinkles at contact points, slides or sticks depending on material, reacts to wind and motion.
- Plausibility: define anchor points, wind direction, gravity, object contact.

Prompt module:

```text
真实布料模拟，丝绸/纱/皮革在重力和微风中形成自然褶皱，接触产品边缘时出现压痕和折线，布面高光随曲面缓慢移动，滑落时露出主体关键部位，材质轻重和摩擦感清楚，柔体与硬物交互真实。
```

## 12. 光束 / 镭射 / 体积光

Use for stage, nightlife, electronics, headphones, cars, performance, dramatic reveal.

- Material: laser line, volumetric beam, lens flare, caustics, reflected light.
- Interaction: beams need haze/dust/fog to be visible; reflect on glossy surfaces; occlude behind objects; flare only near strong highlights.
- Plausibility: define light source, medium, reflection surface, and intensity.

Prompt module:

```text
清晰体积光穿过薄雾，空气中的微尘让光束路径可见，光线被主体边缘遮挡形成层次，金属和玻璃表面出现窄而亮的反射，高光区域有克制镜头光晕，光源方向明确，舞台/商业摄影质感。
```

## 13. 植物 / 生长 / 生态

Use for skincare, tea, wellness, eco products, tourism, nature-tech contrast.

- Material: vines, leaves, roots, petals, pollen, dew, moss.
- Interaction: plants follow cracks, wrap around objects, turn toward light, avoid covering logos unless intended; dew catches light.
- Plausibility: growth should have stages and biological direction.

Prompt module:

```text
植物生长特效，嫩芽从石缝/土壤/包装边缘缓慢伸出，藤蔓沿物体轮廓缠绕但不遮挡标识，叶片向光源方向舒展，露珠在叶缘形成微小高光，花瓣按层次逐渐打开，生态材质真实自然，没有廉价魔法感。
```

## 14. 食品 / 热气 / 拉丝 / 酱汁

Use for restaurants, packaged food, coffee, baking, hotpot, snacks.

- Material: steam, melted cheese, oil, sauce, chocolate, cream, foam, coffee crema.
- Interaction: steam rises from heat; sauce clings and drips; cheese stretches unevenly; oil highlights surface texture.
- Plausibility: make the food edible, warm, and tactile.

Prompt module:

```text
食品微距特效，热气从食物表面以细薄卷曲轨迹上升，融化芝士/酱汁呈现黏稠拉伸和不均匀厚度，油光沿烤制纹理闪烁，液滴在边缘缓慢下坠，食材纹理清晰可食，暖色商业布光突出香气和温度。
```

## 15. 角色能量 / 魔法感 / 超现实广告

Use only when the brief supports fantasy, game, music video, symbolic ads, or stylized CG.

- Material: plasma, ink, aurora, paper, sand, glass, liquid light, calligraphy strokes.
- Interaction: even supernatural effects need rules: origin point, color temperature, force direction, environmental response.
- Plausibility: define whether it is diegetic magic, symbolic overlay, or stylized transition.

Prompt module:

```text
超现实能量特效从角色手势/产品核心/空间裂缝中生成，能量材质像液态光与细密粒子混合，有明确旋转方向和速度变化，经过地面和墙面时留下短暂光影反射，衣物和发丝被能量气流轻微带动，效果有来源、有规则，并与场景光照融合。
```

## Scene Matching Guide

| Scene type | Good effects | Avoid |
|---|---|---|
| 汽车 / 机车 | 尘土、水花、电弧、热浪、光轨、破碎 | 无接触点的漂浮粒子 |
| 美妆 / 香水 | 雾气、液体丝带、花开、粉末、丝绸 | 遮挡瓶身或 logo 的浓烟 |
| 食品 / 饮料 | 水花、冰霜、蒸汽、拉丝、酱汁 | 蓝色滤镜代替冷感 |
| 科技 / AI | 全息 UI、粒子聚合、数据流、电光 | 过度复杂、看不清功能的假科技界面 |
| 运动 / 户外 | 尘土、冲击波、汗水、水滴、布料 | 没有受力方向的爆炸感 |
| 珠宝 / 奢侈品 | 丝绸、玻璃折射、体积光、微粒、镜面反射 | 大量抢主体的粒子 |
| 教育 / 咨询 / 知识产品 | 全息路径、书页粒子、光线图谱、数据节点 | 玄幻感过重、缺少信息结构 |

## Shot-Level Checklist

For every final prompt, include at least five of these nine details:

- source of effect
- material texture
- force direction
- contact response
- lighting/reflection/refraction
- environment reaction
- camera movement/lens
- product/character readability
- physical plausibility phrase
