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

-- Split vertically and horizontally
keymap.set("n", "<leader>v", "<C-w>v");
keymap.set("n", "<leader>h", "<C-w>s");
-- Close split window
keymap.set("n", "<leader>x", ":close<CR>")



-- Plugin Keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- From tpope/vim-surround
-- use ysw + " to surround a word with quotes
-- use ysw + ( to surround a wort with bracket
-- use dsw + " to delete double quotes from around a word


-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- rust commands
keymap.set("n", "<leader>rr", "<cmd>RustRunnables<cr>")

keymap.set("n", "<leader>ss", "<cmd>mksession! ~/dev/vim_sessions/sesh.vim<cr>");
keymap.set("n", "<leader>ll", "<cmd>source ~/dev/vim_sessions/sesh.vim<cr>");

keymap.set("n", "<leader>pp", "<cmd>RustParentModule<cr>")

