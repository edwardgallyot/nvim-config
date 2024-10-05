local opt = vim.opt

if vim.fn.exists('g:os') == 0 then
    local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 or vim.fn.has("win16") == 1
    if is_windows then
        vim.g.os = "Windows"
    else
        local uname_output = vim.fn.system('uname')
        vim.g.os = string.gsub(uname_output, '\n', '')
    end
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.inlay_hints_visible = true

vim.g.zig_fmt_autosave = 0

-- automatic sudo 
-- vim.g.suda_smart_edit = 1

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

vim.cmd([[highlight link NormalFloat Normal]])
vim.cmd([[set nowrap]])

local api = vim.api

-- for 8 space indents on .c files. meh...
api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.c", "*.h"},
  command = "setlocal shiftwidth=8 tabstop=8 expandtab"
})

api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.cr"},
  callback = function ()
    vim.bo.filetype = "ruby"
  end
})

-- for 2 space indents on .lua files. meh...
api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.lua"},
  command = "setlocal shiftwidth=2 tabstop=2 expandtab"
})

-- Define a highlight group with your preferred style
vim.api.nvim_set_hl(0, 'ImportantWord', { fg = 'Pink', bold = true, underline = true})

-- Create an autocmd to match and highlight the word "IMPORTANT"
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*",
  callback = function()
      vim.fn.matchadd('ImportantWord', '\\<IMPORTANT\\>')
  end
})

