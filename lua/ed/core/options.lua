local opt = vim.opt

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

api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {"*.c", "*.h"},
    command = "setlocal shiftwidth=8 tabstop=8 expandtab"
})

