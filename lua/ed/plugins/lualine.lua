local status, lualine = pcall(require, "lualine")

if not status then
    return
end

local custom_gruvbox = require'lualine.themes.gruvbox'

-- Normal mode
custom_gruvbox.normal.a.bg = "#4aa5f0"  -- Blue
custom_gruvbox.normal.b.bg = "#4aa5f0"  -- Blue
custom_gruvbox.normal.c.bg = ""

-- Insert mode
custom_gruvbox.insert.a.bg = "#88b369"  -- Green
custom_gruvbox.insert.b.bg = "#88b369"  -- Green
custom_gruvbox.insert.c.bg = ""

-- Visual mode
custom_gruvbox.visual.a.bg = "#d1be91"  -- Yellow
custom_gruvbox.visual.b.bg = "#d1be91"  -- Yellow
custom_gruvbox.visual.c.bg = ""

-- Replace mode
custom_gruvbox.replace.a.bg = "#d75f5f"  -- Red
custom_gruvbox.replace.b.bg = "#d75f5f"  -- Red
custom_gruvbox.replace.c.bg = ""

-- Command mode
custom_gruvbox.command.a.bg = "#e06c75"  -- Light Red
custom_gruvbox.command.b.bg = "#e06c75"  -- Light Red
custom_gruvbox.command.c.bg = ""

-- Inactive mode
custom_gruvbox.inactive.a.bg = ""
custom_gruvbox.inactive.b.bg = ""
custom_gruvbox.inactive.c.bg = ""

-- Foreground colors
custom_gruvbox.normal.a.fg = "#FAFAFA"
custom_gruvbox.normal.b.fg = "#FAFAFA"
custom_gruvbox.normal.c.fg = "#383A42"

custom_gruvbox.insert.a.fg = "#FAFAFA"
custom_gruvbox.insert.b.fg = "#FAFAFA"
custom_gruvbox.insert.c.fg = "#383A42"

custom_gruvbox.visual.a.fg = "#FAFAFA"
custom_gruvbox.visual.b.fg = "#FAFAFA"
custom_gruvbox.visual.c.fg = "#383A42"

custom_gruvbox.replace.a.fg = "#FAFAFA"
custom_gruvbox.replace.b.fg = "#FAFAFA"
custom_gruvbox.replace.c.fg = "#383A42"

custom_gruvbox.command.a.fg = "#FAFAFA"
custom_gruvbox.command.b.fg = "#FAFAFA"
custom_gruvbox.command.c.fg = "#383A42"

custom_gruvbox.inactive.a.fg = "#FAFAFA"
custom_gruvbox.inactive.b.fg = "#FAFAFA"
custom_gruvbox.inactive.c.fg = "#FAFAFA"

lualine.setup({
    options = {theme = custom_gruvbox}
})
