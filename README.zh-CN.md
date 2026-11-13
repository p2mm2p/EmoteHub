[English](README.md) | [简体中文](README.zh-CN.md)

# EmoteHub - World of Warcraft Addon

可自定义的表情动作栏插件，可用自定义图标快速使用常用表情。支持可调列数的网格、横向单行和纵向单列布局。

## 功能

- 16 个表情按钮和 1 个集成切换按钮
- 3 种布局：可调网格、横向单行（1x17）、纵向单列（17x1）
- 右键拖动切换按钮，可移动框架
- 用斜杠命令显示或隐藏
- 保存位置、可见性和布局设置
- 切换按钮始终可见
- 悬停提示显示表情名称和命令

## 本地化

EmoteHub 加载时会自动跟随《魔兽世界》客户端语言。当前支持：

- `enUS`：默认语言和回退语言（`enGB` 也使用此表）
- `zhCN`

如果所选语言缺少某个翻译键，EmoteHub 会先回退到 `enUS`，再回退到键名，并且不显示错误。

添加其他语言：

1. 打开 `Localization.lua`。
2. 在 `enUS` 和 `zhCN` 表旁添加一个以 `GetLocale()` 返回值命名的表，例如 `deDE`。
3. 将 `enUS` 的所有键复制到新表，只翻译值。保留 `%d`、`%s` 等格式占位符、颜色代码、命令名和布局标识。
4. 保存文件并运行 `/reload`。不需要修改 TOC、添加斜杠命令、更改 SavedVariables 字段或执行构建。

## 安装

1. 将 EmoteHub 文件夹解压到 World of Warcraft 插件目录：
   `World of Warcraft\_retail_\Interface\AddOns\EmoteHub`

2. 启动 World of Warcraft，在插件菜单中启用 EmoteHub。

3. 登录后，EmoteHub 会显示在屏幕中央。

`World of Warcraft\` 后的目录取决于客户端：

- `_retail_`：正式服
- `_classic_era_`：经典旧世
- `_classic_`：怀旧服进度版本（BCC、Wrath、Cata、Mists）
- `_forever_`：无限（Forever）

## 命令

- `/emotehub` 或 `/eh`：显示或隐藏 EmoteHub
- `/emotehub show`：显示 EmoteHub
- `/emotehub hide`：隐藏 EmoteHub
- `/emotehub reset`：将 EmoteHub 位置重置到屏幕中央
- `/emotehub grid`：切换到网格布局（默认 4 列）
- `/emotehub grid <number>`：设置网格列数（1-17，例如 `/emotehub grid 5`）
- `/emotehub horizontal`：切换到横向单行布局（1x17）
- `/emotehub vertical`：切换到纵向单列布局（17x1）
- `/emotehub layout`：显示当前布局设置
- `/emotehub small`：设置小号按钮（32 像素）
- `/emotehub normal`：设置普通按钮（36 像素，默认）
- `/emotehub large`：设置大号按钮（40 像素）
- `/emotehub size`：显示当前按钮尺寸
- `/emotehub position`：显示当前框架位置和已保存位置
- `/emotehub help`：显示可用命令

## 默认表情

插件预置 16 个表情：

1. 挥手（`/wave`）
2. 拥抱（`/hug`）
3. 跳舞（`/dance`）
4. 亲吻（`/kiss`）
5. 调情（`/flirt`）
6. 坐下（`/sit`）
7. 睡觉（`/sleep`）
8. 鞠躬（`/bow`）
9. 欢呼（`/cheer`）
10. 哭泣（`/cry`）
11. 大笑（`/laugh`）
12. 指点（`/point`）
13. 敬礼（`/salute`）
14. 害羞（`/shy`）
15. 感谢（`/thank`）
16. 同意（`/yes`）

## 布局选项

EmoteHub 支持 3 种布局。

### 网格布局（默认）
- **可调网格**：列数 1-17，默认 4 列
- **切换按钮集成**：切换按钮位于网格最后一项
- **示例**：
  - 4x5 网格（4 列）：`/emotehub grid 4`
  - 5x4 网格（5 列）：`/emotehub grid 5`
  - 3x6 网格（3 列）：`/emotehub grid 3`
- **适用场景**：按屏幕尺寸和使用习惯调整排列
- **命令**：`/emotehub grid` 或 `/emotehub grid <number>`

### 横向单行布局
- **1x17 排列**：所有按钮和切换按钮排成一行
- **切换按钮位置**：最左侧第一项
- **适用场景**：屏幕顶部、底部或横向边缘
- **命令**：`/emotehub horizontal`

### 纵向单列布局
- **17x1 排列**：所有按钮和切换按钮排成一列
- **切换按钮位置**：最上方第一项
- **适用场景**：屏幕左侧、右侧或纵向边缘
- **命令**：`/emotehub vertical`

### 切换布局
- 使用上述命令立即切换布局。
- 布局和网格列数会自动保存。
- 切换按钮集成（始终可见）：
  - **网格布局**：切换按钮位于网格最后一项，动作按钮隐藏后仍然可见
  - **横向布局**：切换按钮位于最左侧第一项
  - **纵向布局**：切换按钮位于最上方第一项

## 按钮尺寸

EmoteHub 支持 3 种按钮尺寸。

### 尺寸选项
- **小号（32 像素）**：占用屏幕空间较少，适合放置较多按钮
- **普通（36 像素）**：默认尺寸，兼顾可见性和空间占用
- **大号（40 像素）**：按钮更大，更容易点击

### 尺寸命令
- `/emotehub small`：切换到小号按钮（32 像素）
- `/emotehub normal`：切换到普通按钮（36 像素，默认）
- `/emotehub large`：切换到大号按钮（40 像素）
- `/emotehub size`：显示当前按钮尺寸

### 尺寸管理
- 按钮尺寸切换后立即应用到所有布局。
- 尺寸设置会自动保存。
- 网格、横向和纵向布局使用同一按钮尺寸。
- 切换按钮与动作按钮尺寸一致。

## 位置调整

**重要**：无论动作按钮显示还是隐藏，切换按钮始终可见。

### 所有布局
- **显示或隐藏**：左键单击切换按钮
- **移动 EmoteHub**：右键拖动切换按钮，可将整个插件移到屏幕任意位置
- **始终可用**：动作按钮隐藏时，切换按钮仍然可见

### 网格布局（可调）
- **切换按钮集成**：切换按钮位于网格最后一项
- **始终可见**：动作按钮隐藏时，切换按钮仍然可见
- **可调尺寸**：支持 1-17 列，列数会影响网格形状
- **移动**：右键拖动切换按钮，可移动整个插件
- **自动保存**：停止拖动后，框架位置自动保存

### 横向/纵向布局
- **集成设计**：切换按钮是动作栏的第一项
- **移动**：右键拖动切换按钮，可移动整个动作栏
- **整体移动**：切换按钮和动作按钮一起移动

### 通用
- **自动保存**：停止拖动后，框架位置自动保存
- **位置保存**：位置保存在账号级 SavedVariables（`EmoteHubDB`）中，`/reload` 和游戏重启后仍然有效
- **重置位置**：使用 `/emotehub reset` 将框架移回屏幕中央

## 故障排除

### 布局问题
1. 如果布局没有立即生效，运行 `/reload` 刷新插件。
2. 在较小分辨率下，横向或纵向长布局可能超出屏幕。
3. 如果更改布局后位置不合适，运行 `/emotehub reset`。
4. **位置重置问题**：
   - 如果 `/reload` 后位置重置，移动框架后应会保存。
   - 位置保存在 WTF 文件夹的 EmoteHubDB 中。
   - 运行 `/emotehub reset` 可主动将位置重置到屏幕中央。
5. **拖动问题**：
   - 所有布局：右键拖动切换按钮可移动 EmoteHub。
   - 如果拖动无效，直接右键单击切换按钮再试。
6. **切换按钮可见性**：
   - 网格布局：动作按钮隐藏后，切换按钮仍然可见。
   - 横向/纵向布局：切换按钮随动作栏一起显示。

### 插件未加载
1. 检查文件夹名称是否为 `EmoteHub`。
2. 检查文件是否齐全：`EmoteHub.toc`、`Localization.lua`、`EmoteHub.lua`、`EmoteHub_Options.lua` 和 `Textures\`。
3. 在插件菜单中确认 EmoteHub 已启用。
4. 检查聊天窗口中的错误消息。

### 性能问题
- 如果出现卡顿，尝试缩小纹理文件。
- 压缩 TGA 文件，避免文件过大。

## 文件结构

```text
EmoteHub/
├── EmoteHub.toc          # 插件元数据和加载顺序
├── Localization.lua      # 语言选择和翻译
├── EmoteHub.lua          # 主逻辑
├── EmoteHub_Options.lua  # 界面选项面板
├── README.md             # 英文文档
├── README.zh-CN.md       # 简体中文文档（本文件）
├── INSTALL.txt           # 安装和排错指南
├── INSTALL.zh-CN.txt     # 简体中文安装指南
├── CHANGELOG.md          # 英文发布说明
├── CHANGELOG.zh-CN.md    # 简体中文发布说明
├── LICENSE               # MIT 许可证
└── Textures/             # 图标文件夹
```

## 支持

如遇到问题或需要新功能，请查看插件页面，或在项目仓库中提交问题。

## 许可证

本插件使用 [MIT 许可证](LICENSE)。
