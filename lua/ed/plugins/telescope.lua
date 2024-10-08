local telescope_setup, telescope = pcall(require, "telescope")

if not telescope_setup then
    return
end

local actions_setup, actions = pcall(require, "telescope.actions")

if not actions_setup then
    return
end

require('telescope').setup{
  pickers = {
    find_files = {
      hidden = true,
      ignore_vcs = true,
    }
  }

}

