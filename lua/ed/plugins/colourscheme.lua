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

colourscheme.setup({
    base00 = '#191724',  -- Background
    base01 = '#1f1d2e',  -- Darker line highlighting (Selection Background)
    base02 = '#26233a',  -- Selection Background
    base03 = '#8f8cae',  -- Comments, Invisibles, Line Highlighting Foreground (Brighter)
    base04 = '#b0accf',  -- Dark Foreground (Used for status bars, Brighter)
    base05 = '#ffffff',  -- Foreground, Caret, Delimiters, Operators (Brighter)
    base06 = '#ffffff',  -- Light Foreground (Not often used, Brighter)
    base07 = '#6c6783',  -- Light Background (Not often used)
    base08 = '#eb6f92',  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#f6c177',  -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#ebbcba',  -- Classes, Markup Bold, Search Text Background
    base0B = '#31748f',  -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#9ccfd8',  -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#c4a7e7',  -- Functions, Methods, Attribute IDs, Headings
    base0E = '#f6c177',  -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#524f67',  -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
})
