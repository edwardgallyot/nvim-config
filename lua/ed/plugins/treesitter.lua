local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

-- For web gpu shader config
vim.filetype.add({extension = {wgsl = "wgsl"}})

-- require 'nvim-treesitter.install'.compilers = { 'clang' }

treesitter.setup({

    autotags = {
        enable = true
    },
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    },

    ensure_installed = {
        "wgsl",
        "markdown",
        "markdown_inline",
        "rust",
        "toml",
        "cpp",
        "c",
        "gitignore",
        "python",
        "toml",
        "bash",
        "swift",
        "comment",
    },
    auto_install = true,
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },

})
