local clangd_setup, clangd = pcall(require, "clangd_extensions")

if not clangd_setup then
    return
end

clangd.setup{
}
