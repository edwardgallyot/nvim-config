
local keymap = vim.keymap

-- Exit using j and k  
keymap.set("i", "jk", "<ESC>")
keymap.set("v", "jk", "<ESC>")
keymap.set("i", "jk", "<ESC>")
keymap.set("c", "jk", "<ESC>")
keymap.set("t", "jk", "<C-\\><C-n>")

-- Navigate around the screen
keymap.set("n", "<C-H>", "<C-W>h")
keymap.set("n", "<C-L>", "<C-W>l")
keymap.set("n", "<C-K>", "<C-W>k")
keymap.set("n", "<C-J>", "<C-W>j")

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Increment and Decrement numbers
keymap.set("n", "<leader>+", "<C-a>");
keymap.set("n", "<leader>-", "<C-a>");

-- Build
-- Define your key mappings for different filetypes
local function c_build_keys()
  if vim.g.os == "Darwin" then
    vim.api.nvim_buf_set_keymap(0, 'n', '<leader>b', ':!./build.sh<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<leader>rb', ':!./rebuild.sh<CR>', { noremap = true, silent = true })
  else
    vim.api.nvim_buf_set_keymap(0, 'n', '<leader>b', ':!build<CR>', { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, 'n', '<leader>rb', ':!rebuild<CR>', { noremap = true, silent = true })
  end
end

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.bat", "*.asm", "*.c", "*.h", "*.swift", "*.sh", "*.zig", "*.cpp"},
  callback = c_build_keys
})

-- keymap.set('n', '<leader>rb', ":!rebuild\n")
-- keymap.set('n', '<leader>b',  ":!build\n")

-- Text wrap
keymap.set('n', '<leader>w', ":set nowrap!\n")

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

-- Sidebar tree
keymap.set("n", "<leader>t", ":Neotree toggle<CR>");

-- Close split window
keymap.set("n", "<leader>x", ":close<CR>")

-- Toggle Relative line numbers
-- https://stackoverflow.com/questions/70432184/is-there-a-way-to-toggle-the-relative-number-setting-in-visual-mode-and-only-for
keymap.set("n", "<leader>r", ":setlocal relativenumber!<CR>")

local function term()
    vim.cmd([[
        terminal
        setlocal norelativenumber!
        setlocal nonumber!
    ]])
end
keymap.set("n", "<leader>ln", ":setlocal norelativenumber! nonumber! <CR>")

keymap.set("n", "<leader>T", term)

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

