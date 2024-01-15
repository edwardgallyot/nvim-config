vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")
keymap.set("v", "jk", "<ESC>")
keymap.set("i", "jk", "<ESC>")
keymap.set("c", "jk", "<ESC>")

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Increment and Decrement numbers
keymap.set("n", "<leader>+", "<C-a>");
keymap.set("n", "<leader>-", "<C-a>");

-- System copy and paste
keymap.set("n", "<leader>+", "\"*y");
keymap.set("n", "<leader>+", "\"*p");

-- Paste last yanked
keymap.set("n", "<leader>p", "\"0p");
keymap.set("v", "<leader>p", "\"0p");
keymap.set("c", "<leader>p", "\"0p");

-- Split vertically and horizontally
keymap.set("n", "<leader>v", "<C-w>v");
keymap.set("n", "<leader>h", "<C-w>s");
-- Close split window
keymap.set("n", "<leader>x", ":close<CR>")
-- Toggle Relative line numbers
-- https://stackoverflow.com/questions/70432184/is-there-a-way-to-toggle-the-relative-number-setting-in-visual-mode-and-only-for
keymap.set("n", "<leader>r", ":setlocal relativenumber!<CR>")



-- Plugin Keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- From tpope/vim-surround
-- use ysw + " to surround a word with quotes
-- use ysw + ( to surround a wort with bracket
-- use dsw + " to delete double quotes from around a word


-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- rust commands
keymap.set("n", "<leader>rr", "<cmd>RustRunnables<cr>")
keymap.set("n", "<leader>rd", "<cmd>RustDebug<cr>")

keymap.set("n", "<leader>ss", "<cmd>mksession! ~/dev/vim_sessions/sesh.vim<cr>");
keymap.set("n", "<leader>ll", "<cmd>source ~/dev/vim_sessions/sesh.vim<cr>");

keymap.set("n", "<leader>pp", "<cmd>RustParentModule<cr>")


-- recommended nvim dap commands
keymap.set('n', '<F5>', function() require('dap').continue() end)
keymap.set('n', '<F10>', function() require('dap').step_over() end)
keymap.set('n', '<F11>', function() require('dap').step_into() end)
keymap.set('n', '<F12>', function() require('dap').step_out() end)
keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
keymap.set({'n', 'v'}, '<Leader>dh', function()

  require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)

