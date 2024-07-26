local opt = vim.opt

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--line numbers
opt.number = true

--tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.relativenumber = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- colors
opt.termguicolors = true
--opt.background = "dark"

vim.cmd([[highlight link NormalFloat Normal]])

local api = vim.api

-- for 8 space indents on .c files. meh...
api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.c", "*.h"},
    command = "setlocal shiftwidth=8 tabstop=8 expandtab"
})

api.nvim_create_autocmd("FileType", {
    pattern = "make",
    callback = function()
        vim.bo.expandtab = false
        vim.bo.shiftwidth = 4
        vim.bo.tabstop = 4
    end,
})

api.nvim_exec([[
augroup LimelightGoyo
    autocmd!
    autocmd User GoyoEnter Limelight
    autocmd User GoyoLeave Limelight!
augroup END
]], false)
