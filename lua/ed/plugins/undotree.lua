local keymap = vim.keymap
keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)

if vim.fn.exists('g:os') == 0 then
    local is_windows = vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 or vim.fn.has("win16") == 1
    if is_windows then
        vim.g.os = "Windows"
    else
        local uname_output = vim.fn.system('uname')
        vim.g.os = string.gsub(uname_output, '\n', '')
    end
end

if vim.g.os == "Windows" then
    vim.g.undotree_DiffCommand = "FC"
end

vim.cmd([[
if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif


    let &undodir=target_path
    set undofile
endif
]])
