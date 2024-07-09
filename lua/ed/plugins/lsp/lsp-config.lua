local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

local configs = require("lspconfig.configs")

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
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local opts = { noremap=true, silent=true }

    -- Key mapping for code actions
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

    buf_set_keymap('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

    buf_set_keymap('n', '<leader>gf', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

    buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

    buf_set_keymap('i', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

    buf_set_keymap('i', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

    buf_set_keymap('i', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

    buf_set_keymap('i', '<leader>gf', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

    buf_set_keymap('i', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

    -- You can add more buffer-specific settings here
end

if not configs.wgsl_analyzer then
	configs.wgsl_analyzer = {
		default_config = {
                        cmd = { "/home/edg/.cargo/bin/wgsl_analyzer" },
			filetypes = { "wgsl" },
			root_dir = lspconfig.util.root_pattern(".git", "wgsl"),
			settings = {},
		},
	}
end

-- used to enable autocompletion
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["rust_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["wgsl_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["clangd"].setup({
    capabilities = {
        textDocument = {
            publishDiagnostics = {
                codeActionsInline = false,
            },
            inlayHint = {
                enable = true,
            }
        }
    },
    on_attach = on_attach
        
})

lspconfig["bashls"].setup({
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

lspconfig["zls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["glsl_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

typescript.setup({
    server = {
        capabilities = capabilities,
        on_attach = on_attach
    }
})

