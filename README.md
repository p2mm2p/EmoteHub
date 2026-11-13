[English](README.md) | [简体中文](README.zh-CN.md)

# EmoteHub - World of Warcraft Addon

A customizable emote action bar addon for World of Warcraft that allows you to quickly access your favorite emotes with custom icons. Features multiple layout options including flexible grid sizes, horizontal linear, and vertical linear arrangements.

## Features

- 16 emote buttons plus integrated toggle button
- Three layout options: flexible grid, horizontal linear (1x17), or vertical linear (17x1)
- Right-click drag the toggle button to reposition the frame
- Show/hide with slash commands

- Persistent position, visibility, and layout settings
- Always-visible toggle button for easy access
- Hover tooltips showing emote names and commands

## Localization

EmoteHub follows the World of Warcraft client language automatically when the addon loads. It currently includes:

- `enUS` as the default and fallback language (`enGB` also uses this table)
- `zhCN`

If a translation key is missing from the selected language, EmoteHub falls back to `enUS` and then to the key name without showing an error.

To add another language:

1. Open `Localization.lua`.
2. Add a table named with the exact `GetLocale()` value, such as `deDE`, next to the `enUS` and `zhCN` tables.
3. Copy every key from `enUS` into the new table and translate only the values. Keep format placeholders such as `%d` and `%s`, color codes, command names, and layout identifiers unchanged.
4. Save the file and run `/reload`. No TOC change, slash command, SavedVariables field, or build step is required.

## Installation

1. Extract the EmoteHub folder to your World of Warcraft addons directory:
   `World of Warcraft\_retail_\Interface\AddOns\EmoteHub`

2. Launch World of Warcraft and enable the addon in the AddOns menu

3. EmoteHub will appear in the center of your screen when you log in

The folder after `World of Warcraft\` depends on your client:

- `_retail_`: Retail
- `_classic_era_`: Classic Era
- `_classic_`: Classic progression (BCC, Wrath, Cata, Mists)
- `_forever_`: Forever

## Commands

- `/emotehub` or `/eh` - Toggle EmoteHub visibility
- `/emotehub show` - Show the EmoteHub
- `/emotehub hide` - Hide the EmoteHub
- `/emotehub reset` - Reset EmoteHub position to center
- `/emotehub grid` - Switch to grid layout (default 4 columns)
- `/emotehub grid <number>` - Set grid with specific columns (1-17, e.g. `/emotehub grid 5`)
- `/emotehub horizontal` - Switch to horizontal linear layout (1x17)
- `/emotehub vertical` - Switch to vertical linear layout (17x1)
- `/emotehub layout` - Show current layout setting
- `/emotehub small` - Set small button size (32px)
- `/emotehub normal` - Set normal button size (36px, default)
- `/emotehub large` - Set large button size (40px)
- `/emotehub size` - Show current button size
- `/emotehub position` - Show current frame and saved position
- `/emotehub help` - Show available commands

## Default Emotes

The addon comes with 16 pre-configured emotes:

1. Wave (`/wave`)
2. Hug (`/hug`) 
3. Dance (`/dance`)
4. Kiss (`/kiss`)
5. Flirt (`/flirt`)
6. Sit (`/sit`)
7. Sleep (`/sleep`)
8. Bow (`/bow`)
9. Cheer (`/cheer`)
10. Cry (`/cry`)
11. Laugh (`/laugh`)
12. Point (`/point`)
13. Salute (`/salute`)
14. Shy (`/shy`)
15. Thank (`/thank`)
16. Yes (`/yes`)


## Layout Options

EmoteHub supports three different layout modes:

### Grid Layout (Default)
- **Flexible grid**: Customize columns from 1-17 (default 4 columns)
- **Toggle integration**: Toggle button appears as the last item in the grid
- **Examples**: 
  - 4x5 grid (4 columns): `/emotehub grid 4`
  - 5x4 grid (5 columns): `/emotehub grid 5` 
  - 3x6 grid (3 columns): `/emotehub grid 3`
- **Best for**: Customizable arrangement to fit your screen and preferences
- **Commands**: `/emotehub grid` or `/emotehub grid <columns>`

### Horizontal Linear Layout
- **1x17 arrangement**: All buttons including toggle in a single horizontal row
- **Toggle position**: Toggle button is the first (leftmost) element
- **Best for**: Placement at top or bottom of screen, horizontal screen edges
- **Command**: `/emotehub horizontal`

### Vertical Linear Layout
- **17x1 arrangement**: All buttons including toggle in a single vertical column
- **Toggle position**: Toggle button is the first (topmost) element  
- **Best for**: Placement at left or right side of screen, vertical screen edges
- **Command**: `/emotehub vertical`

### Switching Layouts
- Use the slash commands above to change layouts instantly
- Layout preference and grid size are automatically saved
- **Toggle Button Integration** (always visible):
  - **Grid Layout**: Toggle button appears as the last item in the grid (stays visible when actions are hidden)
  - **Horizontal Layout**: Toggle button is the first (leftmost) element
  - **Vertical Layout**: Toggle button is the first (topmost) element

## Button Sizing

EmoteHub supports three button size options:

### Size Options
- **Small (32px)**: Compact buttons that save screen space, good for fitting many buttons
- **Normal (36px)**: Default balanced size for good visibility and reasonable space usage
- **Large (40px)**: Larger buttons that are more visible and easier to click

### Size Commands
- `/emotehub small` - Switch to small buttons (32px)
- `/emotehub normal` - Switch to normal buttons (36px, default)
- `/emotehub large` - Switch to large buttons (40px)
- `/emotehub size` - Show current button size

### Size Management
- Button size changes are applied instantly across all layouts
- Size preference is automatically saved
- All layouts (grid, horizontal, vertical) use the same button size
- Toggle button always matches the action button size

## Positioning

**Important**: The toggle button is always visible regardless of whether the action buttons are shown or hidden.

### All Layouts
- **Toggle Visibility**: Left-click the toggle button to show or hide the action buttons
- **Move EmoteHub**: Right-click and drag the toggle button to move the entire addon anywhere on screen
- **Always Available**: The toggle button remains visible even when the action buttons are hidden

### Grid Layout (Flexible)
- **Toggle Integration**: Toggle button is the last item in the grid arrangement
- **Always Visible**: Toggle button remains visible even when action buttons are hidden
- **Flexible Sizing**: Supports 1-17 columns (affects grid shape)
- **Movement**: Right-click drag the toggle button to move the entire addon
- **Auto-Save**: Frame position is automatically saved when you stop dragging

### Horizontal/Vertical Layouts  
- **Integrated Design**: Toggle button becomes the first element of the action bar
- **Movement**: Right-click drag the toggle button to move the entire bar
- **Unity**: Toggle button and action buttons move together as one unit

### General
- **Auto-Save**: Frame position is automatically saved when you stop dragging
- **Persistent Position**: Position is saved to account-wide saved variables (`EmoteHubDB`) and persists across `/reload` and game restarts
- **Reset Position**: Use `/emotehub reset` to return to center screen

## Troubleshooting


### Layout Issues
1. If layout changes don't apply immediately, try `/reload` to refresh the addon
2. Long horizontal/vertical layouts may extend off-screen on smaller resolutions
3. Use `/emotehub reset` after changing layouts to reposition if needed
4. **Position Reset Issues**: 
   - If position resets on /reload, try moving the frame and it should save properly
   - Position is saved to EmoteHubDB in your WTF folder
   - Use `/emotehub reset` to intentionally reset to center
5. **Dragging Issues**: 
   - All layouts: Right-click drag the toggle button to move EmoteHub
   - If dragging doesn't work, try right-clicking directly on the toggle button
6. **Toggle Button Visibility**: 
   - Grid layout: Toggle button stays visible when actions are hidden for easy re-access
   - Linear layouts: Toggle button is part of the visible bar

### Addon Not Loading
1. Check that the folder is named exactly `EmoteHub`
2. Ensure all files are present: `EmoteHub.toc`, `Localization.lua`, `EmoteHub.lua`, `EmoteHub_Options.lua`, and `Textures\`
3. Verify the addon is enabled in the AddOns menu
4. Check for error messages in the chat window

### Performance Issues
- If experiencing lag, try reducing texture file sizes
- Ensure TGA files are optimized (avoid unnecessarily large files)

## File Structure

EmoteHub/
├── EmoteHub.toc          # Addon metadata and load order
├── Localization.lua      # Language selection and translations
├── EmoteHub.lua          # Main addon logic
├── EmoteHub_Options.lua  # Interface options panel
├── README.md             # This file
├── README.zh-CN.md       # Simplified Chinese documentation
├── INSTALL.txt           # Installation and troubleshooting guide
├── INSTALL.zh-CN.txt     # Simplified Chinese installation guide
├── CHANGELOG.md          # English release notes
├── CHANGELOG.zh-CN.md    # Simplified Chinese release notes
├── LICENSE               # MIT license
└── Textures/             # Icon folder

## Support

For issues or feature requests, please check the addon's page on your preferred addon repository or create an issue in the project repository.

## License

This addon is licensed under the [MIT License](LICENSE).
