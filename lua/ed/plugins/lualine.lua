local status, lualine = pcall(require, "lualine")

if not status then
    return
end

local custom_ayu_mirage = require'lualine.themes.gruvbox'

-- Normal mode
custom_ayu_mirage.normal.a.bg = "#4aa5f0"  -- Blue
custom_ayu_mirage.normal.b.bg = "#4aa5f0"  -- Blue
custom_ayu_mirage.normal.c.bg = ""  -- Leave empty

-- Insert mode
custom_ayu_mirage.insert.a.bg = "#88b369"  -- Green
custom_ayu_mirage.insert.b.bg = "#88b369"  -- Green
custom_ayu_mirage.insert.c.bg = ""  -- Leave empty

-- Visual mode
custom_ayu_mirage.visual.a.bg = "#d1be91"  -- Yellow
custom_ayu_mirage.visual.b.bg = "#d1be91"  -- Yellow
custom_ayu_mirage.visual.c.bg = ""  -- Leave empty

-- Replace mode
custom_ayu_mirage.replace.a.bg = "#d75f5f"  -- Red
custom_ayu_mirage.replace.b.bg = "#d75f5f"  -- Red
custom_ayu_mirage.replace.c.bg = ""  -- Leave empty

-- Command mode
custom_ayu_mirage.command.a.bg = "#e06c75"  -- Light Red
custom_ayu_mirage.command.b.bg = "#e06c75"  -- Light Red
custom_ayu_mirage.command.c.bg = ""  -- Leave empty

-- Inactive mode
custom_ayu_mirage.inactive.a.bg = ""  -- Leave empty
custom_ayu_mirage.inactive.b.bg = ""  -- Leave empty
custom_ayu_mirage.inactive.c.bg = ""  -- Leave empty

-- Foreground colors
custom_ayu_mirage.normal.a.fg = "#FAFAFA"
custom_ayu_mirage.normal.b.fg = "#FAFAFA"
custom_ayu_mirage.normal.c.fg = "#383A42"

custom_ayu_mirage.insert.a.fg = "#FAFAFA"
custom_ayu_mirage.insert.b.fg = "#FAFAFA"
custom_ayu_mirage.insert.c.fg = "#383A42"

custom_ayu_mirage.visual.a.fg = "#FAFAFA"
custom_ayu_mirage.visual.b.fg = "#FAFAFA"
custom_ayu_mirage.visual.c.fg = "#383A42"

custom_ayu_mirage.replace.a.fg = "#FAFAFA"
custom_ayu_mirage.replace.b.fg = "#FAFAFA"
custom_ayu_mirage.replace.c.fg = "#383A42"

custom_ayu_mirage.command.a.fg = "#FAFAFA"
custom_ayu_mirage.command.b.fg = "#FAFAFA"
custom_ayu_mirage.command.c.fg = "#383A42"

custom_ayu_mirage.inactive.a.fg = "#FAFAFA"
custom_ayu_mirage.inactive.b.fg = "#FAFAFA"
custom_ayu_mirage.inactive.c.fg = "#FAFAFA"

lualine.setup({
    options = {theme = custom_ayu_mirage}
})

