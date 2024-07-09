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
