local status, lualine = pcall(require, "lualine")

if not status then
    return
end

local custom_gruvbox = require'lualine.themes.gruvbox'

custom_gruvbox.normal.a.bg = "#059dc2"
custom_gruvbox.normal.b.bg = "#059dc2"
custom_gruvbox.normal.c.bg = ""

custom_gruvbox.insert.a.bg = "#d05558"
custom_gruvbox.insert.b.bg = "#d05558"
custom_gruvbox.insert.c.bg = ""

custom_gruvbox.visual.a.bg = "#D88157"
custom_gruvbox.visual.b.bg = "#D88157"
custom_gruvbox.visual.c.bg = ""

custom_gruvbox.replace.a.bg = "#fad259"
custom_gruvbox.replace.b.bg = "#fad259"
custom_gruvbox.replace.c.bg = ""

custom_gruvbox.command.a.bg = "#55a393"
custom_gruvbox.command.b.bg = "#55a393"
custom_gruvbox.command.c.bg = ""

custom_gruvbox.inactive.a.bg = ""
custom_gruvbox.inactive.b.bg = ""
custom_gruvbox.inactive.c.bg = ""

custom_gruvbox.normal.a.fg = "#fffcd4"
custom_gruvbox.normal.b.fg = "#fffcd4"
custom_gruvbox.normal.c.fg = "#fffcd4"

custom_gruvbox.insert.a.fg = "#fffcd4"
custom_gruvbox.insert.b.fg = "#fffcd4"
custom_gruvbox.insert.c.fg = "#fffcd4"

custom_gruvbox.visual.a.fg = "#fffcd4"
custom_gruvbox.visual.b.fg = "#fffcd4"
custom_gruvbox.visual.c.fg = "#fffcd4"

custom_gruvbox.replace.a.fg = "#fffcd4"
custom_gruvbox.replace.b.fg = "#fffcd4"
custom_gruvbox.replace.c.fg = "#fffcd4"

custom_gruvbox.command.a.fg = "#fffcd4"
custom_gruvbox.command.b.fg = "#fffcd4"
custom_gruvbox.command.c.fg = "#fffcd4"

custom_gruvbox.inactive.a.fg = "#fffcd4"
custom_gruvbox.inactive.b.fg = "#fffcd4"
custom_gruvbox.inactive.c.fg = "#fffcd4"

lualine.setup({
    options = {theme = custom_gruvbox}
})
