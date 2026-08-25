# Wuxin Film Skill｜无心影视 Skill

这是一个面向影视、动画、游戏美术与 AI 视觉生成的模块化 Skill 套件，覆盖 AI 视频、故事板、角色与服装、场景概念、镜头、灯光、风格、情绪、时长、声音、剪辑、动作设计和视觉特效等制作环节。

这些 Skill 通常安装在：

```text
%USERPROFILE%\.codex\skills
```

本仓库是独立的 Git 版本库，用于版本管理、备份、协作和对外发布，不会自动修改本机正在使用的 Skill。

## 核心能力

- 影视提示词生产调度与平台编译
- 高质量角色、服装、妆造、道具与材质概念设计
- 面向影视、动画和游戏的功能性场景概念设计
- 特效来源、材质、受力、接触、光学反馈与连续性设计
- 镜头景别、机位、焦段、运镜、轴线和覆盖关系设计
- 灯光、风格、情绪、时长、音乐、声音与剪辑协同
- 动作、打斗、追逐和身体运动逻辑设计
- 静态概念图、关键帧、分镜和 AI 视频提示词输出
- 多参考图职责划分、设计锁定和质量检查

## 完整版

仓库根目录保存完整的影视系列 Skill。各专业部门保持独立，可以单独调用，也可以由 `film-prompt-producer` 统一建立 FilmSpec 或 ConceptSpec、锁定制作状态并进行跨部门调度。

完整版适合：

- 持续开发和维护影视系列 Skill；
- 需要角色、场景、特效、镜头、灯光等多部门协同；
- 建立影视、动画或游戏美术资产生产流程；
- 保留完整案例、规则、风格卡和质量检查体系。

`orchestrate-creative-production` 作为经过验证的跨媒介路由依赖保留在完整版中。

## 简化上传版

[`packages/wuxin-film-skill`](packages/wuxin-film-skill) 是单入口的 **Wuxin Film Skill**，适合只能上传一个 Skill 文件夹的平台。

简化版采用渐进加载架构：

```text
用户需求
  → SKILL.md 统一判断任务类型
  → 按需读取角色、场景、特效、镜头、灯光或风格模块
  → 输出可直接复制的提示词与负面提示词
```

当前简化版限制：

- Markdown 文件不超过 50 个；
- 每个文件少于 20,000 字符；
- 一个统一入口，不要求同时加载所有部门规则；
- 支持角色、场景、特效、关键帧、分镜及 AI 视频任务。

平台表单填写内容见 [`packages/wuxin-film-skill-upload-form.md`](packages/wuxin-film-skill-upload-form.md)。

## 安装方法

### 安装完整版

```powershell
git clone https://github.com/Yunwuxin-666/Wuxin-Film-Skill.git
```

根据需要，将其中的专业 Skill 文件夹复制到：

```text
%USERPROFILE%\.codex\skills
```

### 安装简化版

只复制下面这个文件夹：

```text
packages\wuxin-film-skill
```

建议安装到：

```text
%USERPROFILE%\.codex\skills\wuxin-film-skill
```

调用示例：

```text
使用 $wuxin-film-skill，根据我的角色设定和参考图，输出一套高质量写实 CG 角色概念图提示词。
```

## 目录说明

```text
Wuxin-Film-Skill/
├─ film-prompt-producer/          影视与概念制作总入口
├─ character-design/              角色、服装、妆造与材质设计
├─ environment-concept-design/    场景与游戏空间概念设计
├─ vfx-prompt-designer/           视觉特效设计
├─ fight-choreo/                  动作与打斗设计
├─ 镜头.skill/                    摄影机与镜头覆盖
├─ 灯光.skill/                    灯光设计
├─ 风格.skill/                    视觉风格与风格卡
├─ 情绪.skill/                    情绪设计
├─ 时长.skill/                    时长与节奏
├─ 音乐.skill/                    音乐与声音
├─ 剪辑.skill/                    剪辑设计
├─ aivideo-prompt/                AI 视频平台提示词
├─ storyboard-video-prompts/      故事板与视频结构
├─ packages/wuxin-film-skill/     简化上传版
└─ legacy/AIvideo-prompt/         原独立仓库版本归档
```

## 验证

在仓库根目录运行：

```powershell
.\film-prompt-producer\scripts\validate-film-skill-contracts.ps1 -SkillRoot $PWD
```

该脚本用于检查影视系列 Skill 的路由、部门职责、ConceptSpec、FilmSpec 和输出契约是否保持一致。

## 版本与同步

- 本仓库是公开发布和版本管理源。
- 本机 `%USERPROFILE%\.codex\skills` 中的 Skill 不会自动与仓库同步。
- 修改前应明确以仓库版本还是本机版本为准，避免双向覆盖。
- 建议通过 Git 分支、提交和标签管理稳定版本。

## 旧版内容

原 GitHub 仓库中的独立 `AIvideo-prompt` 已完整保存在 [`legacy/AIvideo-prompt`](legacy/AIvideo-prompt) 下，原有 Git 提交历史也已通过迁移合并提交接入当前仓库，没有强制覆盖或丢失。

## 许可证

当前仓库暂未附带开源许可证。在许可证明确之前，默认保留全部权利。
