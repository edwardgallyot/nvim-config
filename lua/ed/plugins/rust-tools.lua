local rusttools_setup, rusttools = pcall(require, "rust-tools")

if not rusttools_setup then
    return
end

rusttools.setup({
    server = {
        on_attach = function(_, bufnr)
        -- Hover actions
        vim.keymap.set("n", "<C-space>", rusttools.hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        vim.keymap.set("n", "<Leader>a", rusttools.code_action_group.code_action_group, { buffer = bufnr })
    end,
    },
    -- inlay hints
    inlay_hints = {
        auto =true,
        show_parameter_hints = true,
    },
    dap = {
      adapter = {
        type = "executable",
        command = "lldb-vscode",
        name = "rt_lldb",
      },
    },
})

-- copied from simrat39
-- local dap = require("dap")
-- dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

-- Inlay Hints
rusttools.inlay_hints.enable()

-- Run rust code
rusttools.runnables.runnables()

-- jump to parent module
rusttools.parent_module.parent_module()
