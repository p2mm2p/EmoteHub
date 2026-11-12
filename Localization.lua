-- Localization.lua
-- Client-language selection and shared translation table for EmoteHub.

local addonName, addonTable = ...

local translations = {
    enUS = {
        ["tooltip.toggle.title"] = "EmoteHub Toggle",
        ["tooltip.toggle.show_hide"] = "Left-click: Show/Hide EmoteHub",
        ["tooltip.toggle.move"] = "Right-click drag: Move EmoteHub",
        ["tooltip.toggle.grid"] = "Grid: %d columns",
        ["tooltip.emote.use"] = "Click to use emote",

        ["emote.wave"] = "Wave",
        ["emote.yes"] = "Yes",
        ["emote.thank"] = "Thank",
        ["emote.cheer"] = "Cheer",
        ["emote.laugh"] = "Laugh",
        ["emote.cry"] = "Cry",
        ["emote.bow"] = "Bow",
        ["emote.point"] = "Point",
        ["emote.salute"] = "Salute",
        ["emote.sit"] = "Sit",
        ["emote.sleep"] = "Sleep",
        ["emote.shy"] = "Shy",
        ["emote.kiss"] = "Kiss",
        ["emote.flirt"] = "Flirt",
        ["emote.hug"] = "Hug",
        ["emote.dance"] = "Dance",

        ["chat.invalid_layout"] = "Invalid layout. Use 'grid', 'horizontal', or 'vertical'.",
        ["chat.layout_changed"] = "Layout changed to %s",
        ["chat.current_layout"] = "Current layout is '%s'",
        ["chat.grid_size"] = "Grid size: %d columns",
        ["chat.available_layouts"] = "Available layouts: grid, horizontal, vertical",
        ["chat.button_size.small"] = "Button size set to small (32px)",
        ["chat.button_size.normal"] = "Button size set to normal (36px)",
        ["chat.button_size.large"] = "Button size set to large (40px)",
        ["chat.button_size.current"] = "Current button size is %dpx",
        ["chat.button_size.available"] = "Available sizes: small (32px), normal (36px), large (40px)",
        ["chat.invalid_grid_size"] = "Invalid grid size. Use 1-17 columns (e.g., /eh grid 4, /eh grid 5)",
        ["chat.position.current"] = "Current frame position - %s %s, %s",
        ["chat.position.saved"] = "Saved position - %s %s, %s",
        ["chat.position.none"] = "No saved position (using default center)",
        ["chat.help.header"] = "Commands:",
        ["chat.help.toggle"] = "|cFFFFFF00/emotehub|r or |cFFFFFF00/eh|r - Toggle visibility",
        ["chat.help.show"] = "|cFFFFFF00/emotehub show|r - Show EmoteHub",
        ["chat.help.hide"] = "|cFFFFFF00/emotehub hide|r - Hide EmoteHub (toggle button stays visible)",
        ["chat.help.reset"] = "|cFFFFFF00/emotehub reset|r - Reset position",
        ["chat.help.grid"] = "|cFFFFFF00/emotehub grid|r - Set grid layout (default 4 columns)",
        ["chat.help.grid_columns"] = "|cFFFFFF00/emotehub grid <number>|r - Set grid with specific columns (1-17)",
        ["chat.help.horizontal"] = "|cFFFFFF00/emotehub horizontal|r - Set horizontal linear layout",
        ["chat.help.vertical"] = "|cFFFFFF00/emotehub vertical|r - Set vertical linear layout",
        ["chat.help.layout"] = "|cFFFFFF00/emotehub layout|r - Show current layout and grid size",
        ["chat.help.small"] = "|cFFFFFF00/emotehub small|r - Set small button size (32px)",
        ["chat.help.normal"] = "|cFFFFFF00/emotehub normal|r - Set normal button size (36px)",
        ["chat.help.large"] = "|cFFFFFF00/emotehub large|r - Set large button size (40px)",
        ["chat.help.size"] = "|cFFFFFF00/emotehub size|r - Show current button size",
        ["chat.help.position"] = "|cFFFFFF00/emotehub position|r - Show current saved position",
        ["chat.help.help"] = "|cFFFFFF00/emotehub help|r - Show this help",
        ["chat.help.note"] = "|cFF888888Note: Toggle button is always visible|r",

        ["options.title"] = "EmoteHub Options",
        ["options.subtitle"] = "Configure EmoteHub layout and appearance.",
        ["options.layout.label"] = "Layout Style:",
        ["options.layout.grid"] = "Grid (Flexible Columns)",
        ["options.layout.horizontal"] = "Horizontal Bar",
        ["options.layout.vertical"] = "Vertical Bar",
        ["options.grid_columns.label"] = "Grid Columns",
        ["options.grid_columns.value"] = "Grid Columns: %d",
        ["options.button_size.label"] = "Button Size",
        ["options.button_size.value"] = "Button Size: %d",
        ["options.reset_position"] = "Reset Position",
    },
    zhCN = {
        ["tooltip.toggle.title"] = "EmoteHub 开关",
        ["tooltip.toggle.show_hide"] = "左键：显示/隐藏 EmoteHub",
        ["tooltip.toggle.move"] = "右键拖动：移动 EmoteHub",
        ["tooltip.toggle.grid"] = "网格：%d 列",
        ["tooltip.emote.use"] = "点击使用表情",

        ["emote.wave"] = "挥手",
        ["emote.yes"] = "是",
        ["emote.thank"] = "感谢",
        ["emote.cheer"] = "欢呼",
        ["emote.laugh"] = "大笑",
        ["emote.cry"] = "哭泣",
        ["emote.bow"] = "鞠躬",
        ["emote.point"] = "指点",
        ["emote.salute"] = "敬礼",
        ["emote.sit"] = "坐下",
        ["emote.sleep"] = "睡觉",
        ["emote.shy"] = "害羞",
        ["emote.kiss"] = "亲吻",
        ["emote.flirt"] = "调情",
        ["emote.hug"] = "拥抱",
        ["emote.dance"] = "跳舞",

        ["chat.invalid_layout"] = "布局无效。请使用 'grid'、'horizontal' 或 'vertical'。",
        ["chat.layout_changed"] = "布局已切换为 %s",
        ["chat.current_layout"] = "当前布局为 '%s'",
        ["chat.grid_size"] = "网格列数：%d 列",
        ["chat.available_layouts"] = "可用布局：grid、horizontal、vertical",
        ["chat.button_size.small"] = "按钮尺寸已设为小号（32px）",
        ["chat.button_size.normal"] = "按钮尺寸已设为普通（36px）",
        ["chat.button_size.large"] = "按钮尺寸已设为大号（40px）",
        ["chat.button_size.current"] = "当前按钮尺寸为 %dpx",
        ["chat.button_size.available"] = "可用尺寸：小号（32px）、普通（36px）、大号（40px）",
        ["chat.invalid_grid_size"] = "网格列数无效。请使用 1-17 列（例如 /eh grid 4、/eh grid 5）",
        ["chat.position.current"] = "当前框架位置 - %s %s, %s",
        ["chat.position.saved"] = "保存的位置 - %s %s, %s",
        ["chat.position.none"] = "没有保存的位置（使用默认居中）",
        ["chat.help.header"] = "命令：",
        ["chat.help.toggle"] = "|cFFFFFF00/emotehub|r 或 |cFFFFFF00/eh|r - 切换显示",
        ["chat.help.show"] = "|cFFFFFF00/emotehub show|r - 显示 EmoteHub",
        ["chat.help.hide"] = "|cFFFFFF00/emotehub hide|r - 隐藏 EmoteHub（切换按钮仍可见）",
        ["chat.help.reset"] = "|cFFFFFF00/emotehub reset|r - 重置位置",
        ["chat.help.grid"] = "|cFFFFFF00/emotehub grid|r - 切换到网格布局（默认 4 列）",
        ["chat.help.grid_columns"] = "|cFFFFFF00/emotehub grid <number>|r - 设置网格列数（1-17）",
        ["chat.help.horizontal"] = "|cFFFFFF00/emotehub horizontal|r - 切换到横向单行布局",
        ["chat.help.vertical"] = "|cFFFFFF00/emotehub vertical|r - 切换到纵向单列布局",
        ["chat.help.layout"] = "|cFFFFFF00/emotehub layout|r - 查看当前布局和网格列数",
        ["chat.help.small"] = "|cFFFFFF00/emotehub small|r - 设为小号按钮（32px）",
        ["chat.help.normal"] = "|cFFFFFF00/emotehub normal|r - 设为普通按钮（36px）",
        ["chat.help.large"] = "|cFFFFFF00/emotehub large|r - 设为大号按钮（40px）",
        ["chat.help.size"] = "|cFFFFFF00/emotehub size|r - 查看当前按钮尺寸",
        ["chat.help.position"] = "|cFFFFFF00/emotehub position|r - 查看当前保存位置",
        ["chat.help.help"] = "|cFFFFFF00/emotehub help|r - 显示此帮助",
        ["chat.help.note"] = "|cFF888888注意：切换按钮始终可见|r",

        ["options.title"] = "EmoteHub 选项",
        ["options.subtitle"] = "配置 EmoteHub 的布局和外观。",
        ["options.layout.label"] = "布局样式：",
        ["options.layout.grid"] = "网格（可调列数）",
        ["options.layout.horizontal"] = "横向栏",
        ["options.layout.vertical"] = "纵向栏",
        ["options.grid_columns.label"] = "网格列数",
        ["options.grid_columns.value"] = "网格列数：%d",
        ["options.button_size.label"] = "按钮尺寸",
        ["options.button_size.value"] = "按钮尺寸：%d",
        ["options.reset_position"] = "重置位置",
    },
}

local locale = GetLocale and GetLocale() or "enUS"
if locale == "enGB" then
    locale = "enUS"
end

local activeTranslations = translations[locale] or translations.enUS

local function T(key, ...)
    local value = activeTranslations[key]
    if type(value) ~= "string" then
        value = translations.enUS[key]
    end
    if type(value) ~= "string" then
        value = key
    end

    if select("#", ...) == 0 then
        return value
    end

    local ok, formatted = pcall(string.format, value, ...)
    if ok then
        return formatted
    end
    return value
end

addonTable.T = T
