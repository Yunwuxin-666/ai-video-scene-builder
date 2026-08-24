# Prompt Templates

Use these templates to produce copy-ready lighting prompts.

## Core Formula

`主体 + 场景 + 可见/隐含光源 + 主光方向 + 光质 + 明暗比例 + 色温 + 背景/轮廓 + 氛围/材质反应 + cinematic lighting terms`

The prompt should answer:

- Where does the light come from?
- How large or hard is the source?
- Which side of the subject is bright?
- How deep are the shadows?
- Why does the background have depth?
- What emotion or material does the light reveal?

## Scene Lighting Prompt

> [主体]在[场景]中，[可见或隐含光源]作为主要光源，[方向]的[硬/软]主光照亮[脸/身体/产品关键面]，[辅光强度]保留/压暗暗部，[轮廓光/背景光/实景光]制造主体分离和空间层次，[色温关系]，[空气/烟雾/雨/反光材质]呈现光线轨迹，整体是[情绪/类型]的影视灯光，cinematic lighting, [English terms]

## Image Repair Prompt

> 保留原图的主体、构图、服装、环境和视觉风格，只优化灯光：[光源]从[方向]进入画面，形成[硬/软]主光；暗部使用[低/中/高]强度辅光控制细节，避免画面发灰；后方加入[轮廓光/背景渐变/实景灯]让主体从背景中分离；色温保持[暖/冷/暖冷对比]且有明确来源；阴影方向一致，材质高光自然，整体更像真实片场布光。

## Lighting-Only Add-On

> 灯光：以[光源]为动机，[方向]的[硬/软]主光塑造主体，[key-to-fill ratio]控制反差，暗部[保留细节/压入深阴影]，后方[轮廓光/背景光/实景光]制造层次，[色温]与[环境/情绪]一致，阴影方向统一，material highlights and shadow falloff are physically plausible.

## Product Prompt

> [产品]置于[台面/环境]，使用[主光]塑造主体体积，[边缘光/轮廓光]勾勒外形，[反光板/黑旗/白旗]控制反射，[背景光]形成从[颜色]到[颜色]的渐变，材质高光清晰但不过曝，[品牌气质]，premium product lighting, controlled specular highlights, edge light, soft/hard key light

## Interview Prompt

> [人物身份]坐在[空间]中，左前方大面积柔和主光略高于眼平线，右侧低强度辅光保留暗部细节，后方弱轮廓光勾勒头发和肩线，背景有暖色实景灯和柔和墙面渐变，肤色自然，眼神有 catchlight，可信、克制、有空间层次，soft key light, low fill ratio, subtle rim light, cinematic interview lighting

## Low-Key Prompt

> [人物/主体]处在[暗色环境]，一束[方向]的窄幅主光只照亮[关键面]，暗部大面积保留但不死黑，背景有微弱[实景光/墙面光/轮廓光]建立空间，色温[冷/暖/对比]，低调光、高反差、压迫感，low key lighting, controlled deep shadows, dramatic side key, subtle rim light

## Naturalistic Prompt

> [人物/主体]在[真实空间]中，[窗光/阴天/室内灯]作为主要光源，柔和散射光从[方向]进入，阴影自然渐变，暗部用极弱反射光保留细节，没有明显舞台感，背景通过实际灯具和自然明暗形成层次，naturalistic lighting, soft window light, realistic shadow falloff

## Neon / Night City Prompt

> 夜晚[城市空间]，[霓虹/便利店/车灯/街灯]成为主要实景光源，[红/蓝/绿/暖黄]光反射在[湿地面/玻璃/皮肤]上，人物脸部一侧被[颜色]切亮，另一侧落入[颜色/阴影]，后方有冷色轮廓光和城市散景，neon practical lights, wet reflections, color contrast, cinematic night exterior

## Candle / Fire Prompt

> [人物]在[昏暗空间]中，近处[蜡烛/火堆]作为唯一暖色实景光源，跳动火光从下前方照亮脸部和手部，阴影不稳定，背景沉入深暗，皮肤和道具有微弱暖色反射，intimate candlelight, flickering warm practical light, low key cinematic lighting

## Negative Prompt Additions

Use only when helpful:

> avoid flat front lighting, avoid unmotivated glow, avoid inconsistent shadow direction, avoid overexposed highlights, avoid muddy underexposed shadows, avoid plastic skin, avoid random mixed color temperature, avoid generic cinematic lighting
