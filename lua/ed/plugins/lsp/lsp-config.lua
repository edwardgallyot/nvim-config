local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end


local configs = require("lspconfig.configs")

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local keymap = vim.keymap

if vim.g.os == "Darwin" then
  lspconfig.sourcekit.setup{}
end

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local opts = { noremap=true, silent=true }

    -- Key mapping for code actions
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

    buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)

    buf_set_keymap('n', '<F12>', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

    buf_set_keymap('n', '<S-F12>', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)

    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

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

lspconfig["gopls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["als"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["ols"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["crystalline"].setup({
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
                enable = false,
            }
        }
    },
    on_attach = on_attach
})

lspconfig["bashls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["nginx_language_server"].setup({
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
  on_attach = on_attach,
})

lspconfig["hls"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["lua_ls"].setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            }
        }
    },
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig["asm_lsp"].setup({
    capabilities = capabilities,
    on_attach = on_attach
})
