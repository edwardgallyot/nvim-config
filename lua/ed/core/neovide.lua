if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.0

  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.10)
  end)

  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1/1.10)
  end)

  vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})

  vim.g.neovide_cursor_animation_length = 0.01;
  vim.g.neovide_scroll_animation_length = 0.1;

  vim.o.guifont = "JetBrains Mono:12"

end
