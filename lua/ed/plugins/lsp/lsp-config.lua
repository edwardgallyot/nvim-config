local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
    return
end

local keymap = vim.keymap

    keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    keymap.set('n', 'gd', vim.lsp.buf.definition, opts)


-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
    vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
end

-- used to enable autocompletion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["rust_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["clangd"].setup({
    capabilities = capabilities,
   on_attach = on_attach
})

lspconfig["cmake"].setup({
    capabilities = capabilities,
    on_attach = on_attach

})

lspconfig["pylsp"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["jsonls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

typescript.setup({
    server = {
        capabilities = capabilities,
        on_attach = on_attach
    }
})

