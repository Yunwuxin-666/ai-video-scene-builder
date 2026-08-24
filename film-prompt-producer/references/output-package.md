# Final Output Package Contract

Use this reference after FilmSpec and department patches are locked. For static concepts, use `concept-output-package.md` instead. Default to the compact package. Use the full package only when the user requests a complete production dossier or every department is operationally necessary.

## Required Shape

```markdown
# 影视提示词生成包

## 1. 项目 Brief
- 片名：
- 类型：
- 时长：
- 画幅：
- 平台：
- 目标观众：
- 行动目标：
- 主体角色/产品：
- 核心情绪：
- 一句话机制：
- 视觉隐喻：
- 必须规避：

## 2. 导演阐述
[用导演语言说明这个片子如何从人物/产品/问题进入，情绪如何推进，视觉为什么这样设计。]

## 3. 视觉系统
- 主色调：
- 辅助色：
- 禁用颜色：
- 光影逻辑：
- 场景结构：
- 材质锚点：
- 服装造型：
- 关键道具：
- 参考转化：

## 4. 完整分镜脚本
| 镜号 | 时间码 | 时长 | 景别 | 画面内容 | 镜头运动 | 声音 | 叙事目的 |
|---|---|---|---|---|---|---|---|

## 5. 每镜头 AI 视频提示词
### Shot 01
- 中文提示词：
- 负面提示词：
- 剪辑备注：

### Shot 02
- 中文提示词：
- 负面提示词：
- 剪辑备注：

## 6. 镜头调度包
| 镜号 | 镜头功能 | 演员走位 | 摄影机走线 | 焦段 | 景深/参数 | 对焦 | 剪辑点 | 连续性目的 |
|---|---|---|---|---|---|---|---|---|

## 7. VFX 提示词包
如果无 VFX，写：本片不需要独立 VFX 生成，主要依靠实拍质感/AI 视频基础生成完成。

| 镜号 | 特效类型 | 来源 | 材质 | 受力 | 环境互动 | 中文提示词 | 负面提示词 |
|---|---|---|---|---|---|---|---|

## 8. 声音与剪辑设计
| 时间 | 剪辑动作 | 环境声 | 音效 | 音乐 | 字幕/包装 | 目的 |
|---|---|---|---|---|---|---|

## 9. 生成注意事项
- 连续性锁定：
- 人物一致性：
- 产品一致性：
- 场景一致性：
- 禁止事项：
- 后期添加：
- 平台适配：
```

Do not expose internal FilmSpec unless the user asks for it. Carry its locked facts into the package without repeating them in every section.

## Compact Package

Use this by default:

1. 项目 Brief
2. 已锁定设定与参考绑定
3. 完整分镜脚本
4. 目标平台提示词
5. 生成与连续性注意事项

Add director treatment, visual system, camera packet, VFX package, or sound cue sheet only when the task needs that department.

## Shot Prompt Standard

Each shot prompt should include:

- stable subject identity and clothing;
- one visible action;
- setting and time;
- shot size, camera angle, lens feel, camera movement;
- motivated light;
- palette and texture anchors;
- spatial anchors for complex scenes: source, target, upper/lower or inside/outside relation, movement direction, and landing/exit point;
- VFX source and force direction when effects move bodies, weapons, cloth, objects, particles, or the environment;
- mood and sound cue;
- negative constraints for likely AI failures.

Write global identity, visual locks, and reference bindings once. Per-shot prompts should contain only the local action and local production changes. Deduplicate global negative constraints.

Avoid readable long text in-frame, random logos, cheap corporate promo style, warped hands, product shape drift, sudden outfit changes, inconsistent screen direction, source/target swaps, unsupported floating, wrong exit direction, and unmotivated camera movement.
