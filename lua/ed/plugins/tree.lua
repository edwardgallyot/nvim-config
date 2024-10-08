require("nvim-web-devicons").setup()

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false,
    }

  },
  popup_border_style="NC"
})
