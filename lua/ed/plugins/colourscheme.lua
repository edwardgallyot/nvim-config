local colourscheme_setup, colourscheme = pcall(require, "colorscheme")

if not colourscheme_setup then 
    return
end

colourscheme.setup({
    base00 = '#1f2430',  -- Background
    base01 = '#33415e',  -- Darker line highlighting (Selection Background)
    base02 = '#33415e',  -- Selection Background
    base03 = '#6dcbfa',  -- Comments, Invisibles, Line Highlighting Foreground (using Blue)
    base04 = '#6dcbfa',  -- Dark Foreground (Used for status bars)
    base05 = '#cbccc6',  -- Foreground, Caret, Delimiters, Operators
    base06 = '#95e6cb',  -- Light Foreground (Not often used)
    base07 = '#ffffff',  -- Light Background (Not often used)
    base08 = '#ed8274',  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#fad07b',  -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#ffd580',  -- Classes, Markup Bold, Search Text Background
    base0B = '#a6cc70',  -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#90e1c6',  -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#6dcbfa',  -- Functions, Methods, Attribute IDs, Headings
    base0E = '#cfbafa',  -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#f28779',  -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
})

-- Rose Wine
colourscheme.setup({
    base00 = '#191724',  
    base01 = '#1f1d2e',  
    base02 = '#26233a',  
    base03 = '#8f8cae',  
    base04 = '#b0accf',  
    base05 = '#ffffff',  
    base06 = '#ffffff',  
    base07 = '#6c6783',  
    base08 = '#eb6f92',  
    base09 = '#f6c177',  
    base0A = '#ebbcba',  
    base0B = '#31748f',  
    base0C = '#9ccfd8',  
    base0D = '#c4a7e7',  
    base0E = '#f6c177',  
    base0F = '#524f67',  
})


-- Gruv Box
colourscheme.setup({
    base00 = '#282828',  
    base01 = '#3c3836',  
    base02 = '#504945',  
    base03 = '#665c54',  
    base04 = '#bdae93',  
    base05 = '#d5c4a1',  
    base06 = '#ebdbb2',  
    base07 = '#fbf1c7',  
    base08 = '#fb4934',  
    base09 = '#fe8019',  
    base0A = '#fabd2f',  
    base0B = '#b8bb26',  
    base0C = '#83a598',  
    base0D = '#8ec07c',  
    base0E = '#d3869b',  
    base0F = '#d65d0e',  
})

-- Atom One Light
colourscheme.setup({
    base00 = '#fafafa',  -- Background
    base01 = '#f0f0f1',  -- Lighter Background
    base02 = '#e5e5e6',  -- Selection Background
    base03 = '#a0a1a7',  -- Comments, Invisibles
    base04 = '#696c77',  -- Dark Foreground
    base05 = '#383a42',  -- Default Foreground
    base06 = '#202227',  -- Darker Foreground
    base07 = '#090a0b',  -- Default Background
    base08 = '#e45649',  -- Red (Errors)
    base09 = '#986801',  -- Orange (Warning)
    base0A = '#c18401',  -- Yellow
    base0B = '#50a14f',  -- Green
    base0C = '#0184bc',  -- Cyan
    base0D = '#4078f2',  -- Blue
    base0E = '#a626a4',  -- Magenta
    base0F = '#a62639',  -- Brown
})

-- Iceberg.vim
colourscheme.setup({
  base00 = '#161821',  -- Background
  base01 = '#1e2132',  -- Lighter Background
  base02 = '#2e303e',  -- Selection Background
  base03 = '#6b7089',  -- Comments, Invisibles
  base04 = '#818596',  -- Dark Foreground
  base05 = '#c6c8d1',  -- Default Foreground
  base06 = '#d2d4de',  -- Lighter Foreground
  base07 = '#e8e9f3',  -- Default Background
  base08 = '#e27878',  -- Red (Errors)
  base09 = '#e2a478',  -- Orange (Warning)
  base0A = '#e2c678',  -- Yellow
  base0B = '#a3be8c',  -- Green
  base0C = '#89b8c2',  -- Cyan
  base0D = '#84a0c6',  -- Blue
  base0E = '#a093c7',  -- Magenta
  base0F = '#d27e99',  -- Brown
})

 require("moonfly").custom_colors({
    bg = "#000000",
  })
vim.cmd [[colorscheme moonfly]]

