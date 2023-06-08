local colourscheme_setup, colourscheme = pcall(require, "colorscheme")

if not colourscheme_setup then 
    return
end

colourscheme.setup({
    base00 = '#4a322800', 
    base01 = '#d05558', 
    base02 = '#55a393', 
    base03 = '#d88157',
    base04 = '#e281c2', 
    base05 = '#fad259', 
    base06 = '#059dc2', 
    base07 = '#fcf9d6',
    base08 = '#4a322800', 
    base09 = '#dc8082', 
    base0A = '#80baee', 
    base0B = '#e2a181',
    base0C = '#e796cc', 
    base0D = '#fbdd83', 
    base0E = '#44b6d1', 
    base0F = '#fdfbe0',
})
