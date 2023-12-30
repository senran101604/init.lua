-- Highlighting Configurations
vim.cmd.colorscheme 'gruvbox'

local current_colorscheme = vim.g.colors_name

-- Melange
if current_colorscheme == "melange" then
    vim.cmd("hi NormalFloat     guibg=#292522")
    -- vim.cmd("hi ColorColumn guibg=#292522")
    vim.cmd("hi ColorColumn     guibg=None")
    vim.cmd("hi String          gui=None")
    vim.cmd("hi Comment         gui=None")
elseif current_colorscheme == "gruvbox" then
    -- vim.cmd("hi Normal      guifg=#FFD8B1")
    -- vim.cmd("hi GruvboxFg1  guifg=#FFD8B1")
    vim.cmd("hi Normal          guifg=#F5F2EB")
    vim.cmd("hi GruvboxFg1      guifg=#F5F2EB")
    vim.cmd("hi CursorLine      guibg=#292522")
    vim.cmd("hi PmenuSel        guibg=#FFA07A")
    vim.cmd("hi NormalFloat     guifg=#F5F2EB guibg=#1d2021")
    vim.cmd("hi Underlined      guifg=#B3CCE3 gui=bold,underline")
    vim.cmd("hi String          guifg=#DADFAE gui=None")
    -- Gruvbox Colors Customization
    vim.cmd("hi GruvboxRed          guifg=#FF6666")
    vim.cmd("hi GruvboxGreen        guifg=#A9C388")
    vim.cmd("hi GruvboxAqua         guifg=#86C990")
    vim.cmd("hi GruvboxYellow       guifg=#E5C07B")
    vim.cmd("hi GruvboxOrange       guifg=#FFA07A")
    vim.cmd("hi GruvboxBlue         guifg=#B3CCE3")
    vim.cmd("hi Comment             gui=None")
    vim.cmd("hi! link Function      GruvboxGreen")
    vim.cmd("hi! link FloatBorder   GruvboxGray")
    vim.cmd("hi! link Operator      GruvboxOrange")
end

-- Vimwiki Support
vim.cmd("hi VimwikiHeader1 guifg=#FF6B81 gui=bold")
vim.cmd("hi VimwikiHeader2 guifg=#86C990 gui=bold")
vim.cmd("hi VimwikiHeader3 guifg=#7EA2F2 gui=bold")
vim.cmd("hi VimwikiHeader4 guifg=#B48EAD gui=bold")
vim.cmd("hi VimwikiHeader5 guifg=#6DC4CE gui=bold")
vim.cmd("hi VimwikiHeader6 guifg=#E5C07B gui=bold")
vim.cmd("hi VimwikiPre     guifg=#A9C388 gui=bold")

vim.cmd("hi Normal         guibg=None")
vim.cmd("hi Todo           guibg=#292522 guifg=#d4b55e")
