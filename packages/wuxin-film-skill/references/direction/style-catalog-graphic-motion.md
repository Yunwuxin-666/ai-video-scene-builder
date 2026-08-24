# Graphic and Motion Style Cards

Load this catalog only for graphic-editorial systems, motion-led key art, or animated-PV stylization requests.

## Graphic Editorial / Visual-System Style Cards

Use these cards for posters, social-media quote graphics, brand statements, course covers, recruitment graphics, and visual-system demonstrations. Apply a card only when the user names it or gives a clear trigger phrase. For text-heavy final artwork, prefer code-native SVG/HTML/Figma output; use image generation for visual exploration and looser graphic expression.

### 美团黄极简编辑系统 / Yellow Editorial System

Use for high-clarity white-background posters built from Swiss-grid discipline, oversized typography, yellow selection highlights, and graphic-tool control points. This is an opt-in graphic style card, not a default look for all posters and not an instruction to reproduce the Meituan brand identity.

- Trigger phrases: 美团黄极简编辑, 美团黄视觉系统, 黄黑极简海报, Yellow Editorial System, Minimal Quote Graphic 黄黑版, Swiss Grid 黄黑版, 编辑器选框海报, 图形工具视觉, 白底黄黑排版.
- Do not trigger for: ordinary yellow posters, food-delivery ads, Meituan logo recreation, general commercial design, or any task that only mentions yellow without requesting minimal editorial typography.
- Core idea: make the message feel like it is being actively selected, arranged, and clarified inside a design tool. Use visual hierarchy as the main image; illustration remains secondary.
- Canvas: prefer 4:5 vertical at 1080x1350 for social media; allow 1:1, 3:4, 9:16, A4, or landscape adaptations while preserving the hierarchy and negative-space ratio.
- Grid: use a 12-column modular grid, 8px base unit, 72-96px outer margin at 1080px width, and faint grid lines at roughly 4-8% black opacity. Align major type, highlights, rules, and metadata to shared grid lines.
- Composition: asymmetric left alignment, one dominant headline block, one secondary statement, and 35-55% usable white space. Build a clear reading path from small metadata to large claim, highlighted keyword, supporting sentence, then footer.
- Typography: modern Chinese sans-serif with strong weight contrast; headline 700-900, support 300-500, metadata 500-700. Use 1-3 type sizes with an obvious ratio; keep Chinese tracking controlled and avoid decorative fonts. Mix English only as restrained metadata or system labels.
- Palette: canvas white `#FFFFFF`, near-black `#111111`, primary yellow `#FFD100`. Optional neutral grid `rgba(17,17,17,0.06)`. Do not add unrelated accent colors unless the user explicitly requests a palette variant.
- Signature components: yellow rectangular highlight bar, thin black selection frame, circular or square control nodes, anchor points, vector path handles, crop marks, modular rules, tiny system labels, and one simple geometric tool motif.
- Graphic language: vector-clean edges, flat color, no gradients by default, no 3D, no drop shadows, no paper mockup, no decorative photography. Treat UI-like controls as compositional punctuation, not as a literal software screenshot.
- Copy rule: use one concise claim with 6-18 Chinese characters when possible. Highlight only one semantic pivot such as `系统`、`清晰`、`更好` or `行动`; do not highlight every line.
- Brand boundary: use the yellow hue as a palette reference only. Do not generate the Meituan logo, mascot, app UI, proprietary icons, or claim official brand affiliation unless the user supplies authorized assets and explicitly requests their use.
- Code route: for exact Chinese copy, repeatable layouts, exports, or design-system implementation, generate editable SVG/HTML/CSS/Figma using grid, typography, and token constraints. Keep all text as text whenever possible.
- Image-generation route: for early visual exploration, allow slightly more expressive spacing and tool motifs, but preserve exact requested text, white background, black/yellow palette, and crisp vector-like finish. Validate Chinese text before delivery.
- Motion add-on: 3-5 second graphic motion; grid fades in, selection frame draws on, yellow highlight expands horizontally, headline locks into place, control node gives one restrained snap, then the layout settles. Avoid bouncing every element or simulating a busy software interface.
- Avoid: Meituan logo imitation, food-delivery imagery, extra brand colors, gradient mesh, glossy 3D, heavy texture, rounded app-card layouts, dense UI chrome, random control points, excessive highlights, illegible Chinese text, warped typography, stock-template feeling, watermark.

Reference implementation:

- Editable code example: `E:\行知数字\07_视觉物料\视觉控制卡_数字编辑系统\08_效果测试\美团黄_代码版.svg`
- Image-generation example: `E:\行知数字\07_视觉物料\视觉控制卡_数字编辑系统\08_效果测试\美团黄_插件版.png`
- Design-system source: `E:\行知数字\07_视觉物料\视觉控制卡_数字编辑系统`

Example prompt:

`美团黄极简编辑系统风格，4:5竖版白底海报，12栏瑞士网格和大面积留白，主标题“让复杂归于系统。”使用现代中文无衬线粗体左对齐排版，将“系统”放进#FFD100黄色矩形高亮条，外侧添加细黑色选择框与两个控制节点；下方用较轻字重排“让表达保持清晰。”，角落加入极小的VISUAL SYSTEM / TEST标签和一个由锚点、路径、圆形组成的抽象图形工具符号。纯白、近黑、美团黄三色，平面矢量感，边缘清晰，无渐变、无阴影、无3D、无照片、无美团Logo、无水印。`

## Motion / Animated-PV Style Cards

Use these cards for action PVs, sports commercials, stylized game-event openings, music-driven transitions, and hybrid live-action / animation sequences. Apply a card only when the user names it or gives a clear trigger phrase. Preserve the user's character, product, equipment, story, and brand identity; the card controls visual grammar and motion behavior, not the subject itself.

### 糖爆波普弹性动作PV / Candy-Pop Elastic Action PV

Use for:
high-energy sports advertising, playful action PVs, stylized game trailers, live-action-to-animation transitions, product films that need exaggerated impact, and 2D animation with convincing 3D spatial depth.

Trigger phrases:
`糖爆波普PV`、`高饱和波普弹性动作`、`弹性漫画动作PV`、`果冻波普运动广告`、`高饱和二维三维空间PV`、`Candy-Pop Elastic Action PV`、`Pop Elastic Sports PV`。

Do not trigger for:
generic `高饱和`、`漫画`、`二次元`、`运动广告`、`游戏PV` or `波普` requests alone. This is an opt-in style card, not the default look for all animation or sports work.

Core idea:
`冷静、专业的人物`置于一个`反应过度、具有弹性的高饱和世界`中。人物动作保持清楚、可信、利落；环境、轨道、云团、液体、冲击图形和透视空间则像拥有喜剧性物理规则一样主动回应人物与设备。视觉冲击来自“动作—接触—形变—回弹—余振”的完整因果链，而不是随机贴纸、连续Glitch或无意义爆炸。

Reference boundary:
reference images control only palette logic, linework, print texture, elasticity, spatial layering, camera exaggeration, transition mechanics, and comedic timing. Do not copy reference characters, chibi proportions, costumes, props, logos, titles, UI, exact compositions, or story beats. Unless explicitly requested, keep the user's character age, anatomy, facial identity, wardrobe, product structure, equipment, and brand colors unchanged.

Tone:
鲜艳、锐利、淘气、夸张、速度感强，带商业游戏活动PV和潮流动画片头的完成度；不是幼儿卡通，也不是失去空间关系的平面插画。幽默来自世界的过度反应，人物本身可以保持冷静、专注甚至略显无奈。

Palette:
- 主色优先使用电光青、热粉红、酸性黄，三者形成大面积高明度撞色。
- 钴蓝、深海军蓝与紫罗兰承担空间结构、阴影、洞口和轮廓稳定。
- 珊瑚橙、荧光绿只作为短促节拍色，不与主色平均分配。
- 黑色或深紫粗轮廓负责收束高饱和色；白色用于雪面、速度高光、爆炸星芒和视觉呼吸区。
- 允许局部CMY色边错位，但仅持续1—2帧并服务于撞击或切点。

Character grammar:
- 人物采用清晰的二维赛璐璐动画造型，成人或原设比例不变，轮廓简练但装备结构准确。
- 以深海军蓝或深紫粗线勾勒外轮廓，受光侧加入细窄电光青或酸性黄轮廓光。
- 阴影使用干净的两至三段色阶、硬边色块和少量半调网点，不做油亮塑料皮肤或软糯3D公仔质感。
- 运动姿态必须有重心、压刃、蹬伸、腾空、落地和惯性延迟；头发、衣摆、绑带、雪杖等次级动作晚于躯干1—3帧。
- 人物表情克制，避免偶像写真姿势；环境可以夸张，角色动作不能失去专业可信度。

Line and texture grammar:
- 粗黑或深紫漫画线、局部双重彩色轮廓、半调网点、粗颗粒印刷纹理、速度排线和放射线并用。
- 冲击点使用白色或酸性黄锯齿星爆，边缘可叠加热粉和青色错位轮廓。
- 允许不可读的抽象拟声字块、弧形符号和几何标记作为节奏图形；准确文字与Logo留给后期。
- 纹理必须随物体透视和曲面变形，不能像屏幕滤镜一样平贴全画面。

Spatial grammar — 2D image, 3D depth:
- 画面保持二维动画和印刷图形质感，但用5—7层明确前中后景建立三维空间：近景遮挡层、人物层、交互特效层、轨道或地表层、环境结构层、远景色块层、天空或洞口层。
- 通过透视缩放、视差、接触阴影、曲面网格、前景高速掠过和遮挡转场建立纵深，不使用折纸城市或所有元素贴在同一平面的做法。
- 空间形态优先圆滑、连续、柔韧：弧形透视网格隧道、橡胶峡谷、果冻重力膜、软糖速度门、缎带彗尾、弹性云层、液态光轨和巨型图形太阳。
- 背景可夸张变形，但运动轴线和人物推进方向必须始终可读。

Interaction and elastic physics:
- 所有主要特效必须由人物、设备或地形触发，并产生可追踪反馈；禁止特效自行表演。
- 使用五拍因果：`预备压缩 → 明确接触 → 夸张形变 → 超调回弹 → 轻微余振`。
- 可复用戏谑反应：轨道被压得过深后弹回；软糖门向后弯曲再“啪”地归位；器械戳入果冻膜产生两次小回弹；液滴差点撞上人物又急转躲开；峡谷口张得过大后尴尬地缩回；彩色彗尾绕成弹簧后绷直并在云层上打出圆洞；起跳面多压缩一帧，再突然爆发向上。
- 接触前必须有0.1—0.3秒预示，接触帧可加入1帧冲击帧；回弹方向必须与受力方向一致，余振不超过主动作强度的30%。

Camera grammar:
- 主运动镜头优先14—20mm超广角或轻微鱼眼；极低机位贴近滑行设备、鞋底、轮胎、板刃或地面，让前景占画面60%—80%。
- 使用快速贴地跟随、侧向平行跟拍、仰拍冲坡、前景穿越、短促推拉和一次有动机的甩镜；允许8—12度荷兰角强化失衡与喜剧张力。
- 夸张透视时，主体头部和躯干仍需保持可识别，不让四肢因广角失真而断裂。
- 每次极端镜头后用一个方向明确的中景或宽景恢复空间方位；若叙事设定从左向右推进，所有穿越、轨道、速度线和回弹余势都应回到同一运动轴。

Transition grammar:
- 转场必须由同一动作或同一物体持续触发：设备划痕变光轨、雪雾变半调云、护目镜反光变彩色洞口、地面裂缝变弹性隧道、前景色带遮满镜头后揭开新空间。
- 现实与动画切换应发生在高速动作内部，而不是动作结束后另起一场；保持人物姿态、运动方向、摄影机高度、接触点和速度连续。
- 优先使用形状匹配、运动匹配、前景遮挡、洞口穿越、液体包裹、冲击帧和材质渐变；不用普通溶解、随机Glitch、无因甩镜或突然换背景。
- 进入动画世界时逐级增加：先出现彩色轮廓和半调纹理，再让雪迹或轨道变形，最后让整个空间完成高饱和接管。退出时反向执行，并在现实雪雾、尘迹或尾流上保留0.2—0.5秒青／粉／黄残影作为缝合。

Composition:
- 使用强对角线、弧形轨道、环形洞口和超近景设备构成视觉主线；焦点始终落在人物动作、设备接触点或产品结构上。
- 信息可以密集，但同一帧只设一个主冲击点；星芒、网点、速度线、液滴和字块必须围绕该点组织。
- 允许人物偏置构图、极端前景和大面积色块，但必须保留清晰剪影与品牌安全区。

Style intensity controls:
- `30% 预热`：写实或克制画面中只出现青／粉轮廓、少量半调、一次图形匹配，空间尚未完全变形。
- `80% 接管`：人物二维化，轨道与环境开始弹性互动，超广角、色带、速度线和印刷错位明显增强。
- `100% 高潮`：完整高饱和空间、极端前景、连续接触反馈、星爆冲击帧与戏谑物理同时成立，但保持动作轴和单一视觉焦点。
- `30%→0% 回收`：动画空间随同一动作退回现实，只留下短促彩色残影、半调雪雾或一条弹性尾迹，随后进入干净产品镜头。

Product and brand adaptation:
- 产品廓形、颜色、面料分区、拉链、口袋、袖口、头盔、护目镜、器械和Logo位置必须稳定，不因动画夸张而漂移。
- 特效优先从产品功能点或运动接触点生长，例如拉链齿变山脊、压线变轨道、面料绗缝变曲面网格、雪板刃划出液态光轨；功能逻辑优先于装饰。
- 产品揭晓阶段降低背景饱和度和运动密度，恢复真实材质或更干净的二维产品图形，让卖点可读。

Avoid:
chibi copying, infantile cartoon proportions, pure flat illustration without depth, paper-folding environments, generic cyberpunk neon streets, random sticker piles, constant glitch, unmotivated explosions, all elements on one plane, rigid track geometry, hard-edged mechanical tunnels, effects that do not touch the character or equipment, unclear movement axis, weightless action, frozen clothing, sliding feet, broken anatomy, distorted gear, drifting wardrobe details, excessive fisheye distortion, unreadable product, copied characters or UI, logos, watermarks, QR codes, and AI-garbled text.

Example prompt — skiing transition:
`糖爆波普弹性动作PV，16:9，24fps，一名成年专业滑雪者穿浅冰蓝短款羽绒滑雪服、黑色滑雪裤和黑色手套，在严酷低饱和雪山中高速向左至右下压过弯。摄影机贴近雪板使用16mm超广角低机位跟随，雪板前端占近景65%，压刃卷起的白色雪雾先出现电光青与热粉红轮廓，再转成带半调网点的液态色带。雪板刃持续划过同一条雪痕，雪痕在高速运动中变成圆滑的青色弹性轨道，地面不是突然消失，而是从接触点向前连续软化成弧形透视网格隧道；人物姿态、速度、机位高度和从左向右的运动轴保持不变。进入动画空间后，轨道被板刃压低并超调回弹，紫色果冻云洞被彩色尾迹撑开，软糖速度门向后弯曲再啪地归位，酸性黄星爆只在接触帧出现1帧。角色保持成人比例、专业压刃重心和准确装备结构，深紫粗轮廓、两段赛璐璐阴影、热粉／电青／酸黄高饱和撞色、粗颗粒印刷纹理、5—7层二维景片形成真实三维纵深。高潮后彩色轨道重新凝结成现实雪痕，青粉黄残影留在雪雾中0.3秒，再进入干净产品镜头。冷静专业人物与反应过度的弹性世界形成戏谑反差。`

Negative prompt:
`不要折纸空间，不要纯平面二维插画，不要3D塑料公仔，不要幼儿化Q版，不要复制参考人物、服装、道具、构图、Logo或UI；不要硬直机械轨道、普通赛博霓虹街景、随机贴纸堆叠、连续Glitch、无因爆炸、无意义甩镜、普通溶解、突然换场；不要特效与人物及设备脱离，不要运动方向跳轴、动作断裂、失重滑步、僵硬姿态、四肢变形、额外手指、装备结构变化、服装颜色漂移、产品细节丢失；不要所有元素贴在同一平面，不要过度鱼眼导致主体不可识别，不要乱码文字、水印、二维码。`

