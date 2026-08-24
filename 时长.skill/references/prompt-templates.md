# Prompt Templates

## AI Video Shot Prompt Template

Use one main action per generated clip.

```text
{timecode}，{duration}，{stable subject identity and clothing}在{setting}中{one clear action}。{shot size}，{camera position}，{focal length}，24fps，1/48s，{aperture}，{support system}，{camera movement path and speed}，焦点{focus behavior}。切点放在{cut point}。负面提示词：避免廉价企业宣传片感，避免过度表演，避免随机 logo，避免杂乱 UI，避免手部畸形，避免镜头无动机乱晃，避免人物方向混乱，避免假大片预告片质感。
```

## Timing Table Template

```markdown
| 镜号 | 时间码 | 时长 | 画面动作 | 镜头功能 | 切点 | 时长理由 |
|---|---|---:|---|---|---|---|
| 1 | 0:00-0:03 | 3s |  |  |  |  |
```

## Commercial Example

```text
0:06-0:09，3 秒，一位穿白色衬衫的教育咨询师坐在木色桌边，把一张凌乱的成绩表推到平板旁边，手指停在一次明显下滑的位置。桌面插入中近景，50mm 镜头，24fps，1/48s，T2.8，滑轨从纸面缓慢横移到平板，焦点从成绩曲线过渡到咨询师的手指。切点放在手指停住后的半秒。负面提示词：避免廉价企业宣传片感，避免杂乱 UI，避免文字乱码，避免手部畸形，避免镜头无动机乱晃。
```

## Suspense Example

```text
0:30-0:38，8 秒，夜晚厨房里，一个穿灰色毛衣的女人站在水槽前慢慢停下动作，意识到身后玻璃门上有模糊倒影。中景，35mm 镜头，24fps，1/48s，T2.8，手持极轻微晃动，摄像机在她侧后方一米半处缓慢推近，焦点先锁在她的后颈，最后一秒移到玻璃反光。切点放在她准备回头但还没回头的一刻。负面提示词：避免突然跳吓，避免过度表演，避免怪异变形人影，避免镜头乱晃，避免假预告片质感。
```

## Product Proof Example

```text
0:12-0:16，4 秒，一只手打开课程规划页面，另一只手把纸质资料上的目标分数圈出来。俯拍插入镜头，90mm macro，24fps，1/48s，T5.6，三脚架固定，焦点从笔尖圈出的数字转到平板上的路径图。切点放在路径图完全出现后的半秒。屏幕文字建议后期添加。负面提示词：避免 UI 混乱，避免文字乱码，避免手指畸形，避免产品动作看不清。
```

## Dialogue / Reaction Example

```text
0:18-0:23，5 秒，母亲坐在咨询桌对面，听完诊断后没有立刻说话，只是把手里的资料慢慢放低。过肩中近景，70mm 镜头，24fps，1/48s，T2.4，摄像机在咨询师肩后偏右，母亲脸部清晰，前景肩膀虚化，焦点锁在她的眼睛上。切点放在她准备开口前。负面提示词：避免夸张哭泣，避免电视剧式表演，避免镜头无理由推拉，避免人物视线混乱。
```

## Negative Prompt Set

Use relevant items only:

```text
避免廉价企业宣传片感，避免过度表演，避免随机 logo，避免杂乱 UI，避免文字乱码，避免手部畸形，避免镜头无动机乱晃，避免人物方向混乱，避免动作未完成就切断，避免产品证明看不清，避免假大片预告片质感。
```
