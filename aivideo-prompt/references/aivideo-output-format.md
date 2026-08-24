# AIvideo Output Format

Use this reference when the user wants output in the `AIvideo-prompt` repository style, asks for a scene pack, or needs copy-pasteable prompt deliverables.

## Default Structure

```markdown
## 〖基础设定〗

短片时长：
视频比例：
核心创意：
一句话机制：
人物：
场景：
关键道具：
冲突：
结尾字幕：

## 〖氛围与画质〗

整体画质：
色彩：
镜头语言：
声音设计：
剪辑节奏：
负面风格：

## 〖画面内容〗

### 分镜 1（00:00-00:05）〖景别 / 机位〗

画面描述：

生成提示词：

负面提示词：

剪辑备注：

## 〖完整分镜脚本表〗

| 镜头号 | 时间码 | 时长 | 景别 | 机位 | 画面内容 | 动作 | 情绪目的 | 声音提示 | 镜头功能 |
|---|---:|---:|---|---|---|---|---|---|---|
```

## Shot Duration

- 15 秒短片：3-5 个镜头。
- 30 秒短片：6-8 个镜头。
- 60 秒短片：10-14 个镜头。
- 90 秒短片：14-20 个镜头。

Keep most shots at 4-8 seconds. Use 2-3 seconds only for inserts, transitions, or fast montage.

## Good Prompt Pattern

`主体 + 动作 + 场景 + 机位/景别 + 运镜 + 光线 + 色彩 + 质感 + 情绪 + 风格约束`

Example:

`一位 28 岁年轻女性创作者，白色衬衫和深灰外套，坐在清晨图书馆长桌前，低头看一张手写便签，桌面堆着旧书和铅笔，远景静态镜头，柔和自然光，暖木色和纸张米白，真实商业广告质感，克制安静，浅景深。`

## Common Negative Prompt

`不要赛博朋克，不要蓝紫霓虹，不要廉价企业宣传片，不要网红摆拍，不要夸张表情，不要复杂品牌 logo，不要乱码文字，不要畸形手指，不要混乱 UI，不要过度锐化，不要卡通感，不要预告片式爆炸光效。`
