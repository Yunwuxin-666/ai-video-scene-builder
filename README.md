# AI Video Scene Builder

把中文 AI 视频想法、场景或戏剧片段，拆成可以直接执行的场景包与分镜输出。

这个 skill 适合：

- AI 短剧
- AI 漫剧
- 广告视频
- 单场景情绪短片
- 教学型分镜拆解
- 需要继续衔接生图、图像资产、视频提示词的项目

## 能做什么

这个 skill 的目标不是只给一份“好看但空”的镜头描述，而是把一个模糊的视频想法推进成更接近制作执行的场景包。

默认输出会尽量包含这些部分：

1. 一句话场景定义
2. 场景核心判断
3. 情绪线
4. 时长建议与节奏
5. 声音方案
6. 分镜脚本表
7. 素材准备清单
8. 镜头提示词
9. 可选图表建议

如果用户明确需要 `Seedance`，还会继续把分镜表转成按组的 Seedance 片段提示词。

## 默认分镜表结构

这个 skill 当前默认按完整 10 列输出分镜表：

| 镜头号 | 时长 | 景别 | 机位 | 画面内容 | 动作 | 情绪目的 | 声音提示 | 全局提示词 | 细节增强提示词 |
| --- | ---: | --- | --- | --- | --- | --- | --- | --- | --- |

这套结构的设计逻辑是：

- 前 8 列负责镜头结构
- `全局提示词` 负责统一整场戏的审美底座和技术质感
- `细节增强提示词` 负责补单镜头的材质、光影、运动细节和完成度

## 适合的输入

- 一句话视频想法
- 一段剧情简介
- 一小段戏剧片段
- 一场打斗戏
- 一场对话戏
- 一段广告脚本
- 一份教学案例

## 目录结构

```text
ai-video-scene-builder/
├─ SKILL.md
├─ README.md
├─ agents/
│  └─ openai.yaml
├─ assets/
│  ├─ material-checklist-template.md
│  ├─ scene-diagram-template.md
│  ├─ seedance-clip-template.md
│  ├─ shot-prompt-template.md
│  ├─ sound-script-template.md
│  └─ storyboard-template.md
└─ references/
   ├─ continuity-rules.md
   ├─ output-patterns.md
   ├─ prompt-patterns.md
   ├─ scene-structure.md
   ├─ seedance-integration.md
   ├─ shot-language.md
   ├─ sound-design.md
   └─ workflow.md
```

## 安装

把整个目录放到本机的 Codex skills 目录下：

```powershell
C:\Users\<YourUser>\.codex\skills\ai-video-scene-builder
```

或放到你当前环境约定的 skills 目录中。

## 调用方式

直接在提示里调用：

```text
$ai-video-scene-builder
```

例如：

```text
用 $ai-video-scene-builder 把这段 15 秒梦境森林视频想法拆成可执行分镜表，输出完整 10 列结构。
```

```text
用 $ai-video-scene-builder 把这场国风打斗戏拆成短剧分镜，并补全全局提示词、细节增强提示词。
```

```text
用 $ai-video-scene-builder 把这个参考片段拆成教学型分镜设计表，再转成 Seedance 分组提示词。
```

## 设计原则

这个 skill 的核心原则是：

- 先判断这场戏真正讲什么，再展开镜头
- 先定节奏和时长，再定画面
- 先设计声音，再设计镜头
- 先保证连续性，再考虑“好看”
- 先做稳定分镜，再做提示词

同时，它会特别强调：

- 铺垫镜头 / 推进镜头 / 攻击镜头的分层
- 张力判断
- 连续性检查
- 声音设计
- 适合下游生图和视频生成的字段结构

## 输出偏好

这个 skill 默认：

- 用中文输出
- 分镜优先可执行、可教学、可衔接下游
- 不混入对话式说明腔
- 如果用户给了原台词，默认不擅自改写

## 适合继续扩展的方向

- 更多平台下游适配
- 更多案例模板
- 更细的类型片规则
- 更完整的提示词映射体系

## License

暂未附带许可证。

如果你准备公开发布，建议补一个 `MIT` 或 `Apache-2.0` 许可证文件。
