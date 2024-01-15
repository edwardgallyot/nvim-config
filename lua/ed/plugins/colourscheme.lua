local colourscheme_setup, colourscheme = pcall(require, "colorscheme")

if not colourscheme_setup then 
    return
end

colourscheme.setup({
    base00 = '#0D0F14',  -- Background
    base01 = '#21252b',  -- Darker line highlighting
    base02 = '#9b9fa5',  -- Selection Background
    base03 = '#3b71f2',  -- Comments, Invisibles, Line Highlighting Foreground
    base04 = '#2c313c',  -- Dark Foreground (Used for status bars)
    base05 = '#9b9fa5',  -- Foreground, Caret, Delimiters, Operators
    base06 = '#e6e6e6',  -- Light Foreground (Not often used)
    base07 = '#e6e6e6',  -- Light Background (Not often used)
    base08 = '#d75f5f',  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
    base09 = '#d1be91',  -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
    base0A = '#d1be91',  -- Classes, Markup Bold, Search Text Background
    base0B = '#88b369',  -- Strings, Inherited Class, Markup Code, Diff Inserted
    base0C = '#2bbac5',  -- Support, Regular Expressions, Escape Characters, Markup Quotes
    base0D = '#4aa5f0',  -- Functions, Methods, Attribute IDs, Headings
    base0E = '#be82f0',  -- Keywords, Storage, Selector, Markup Italic, Diff Changed
    base0F = '#e06c75',  -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
})
