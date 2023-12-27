-- Highlighting Configurations
vim.cmd.colorscheme 'gruvbox'

local current_colorscheme = vim.g.colors_name

-- Melange
if current_colorscheme == "melange" then
    vim.cmd("hi NormalFloat guibg=#292522")
    -- vim.cmd("hi Normal guibg=#151515")
    -- vim.cmd("hi ColorColumn guibg=#292522")
    vim.cmd("hi Normal guibg=None")
    vim.cmd("hi ColorColumn guibg=None")
    vim.cmd("hi String gui=None")
    vim.cmd("hi Comment gui=None")

elseif current_colorscheme == "gruvbox" then
    -- vim.cmd("hi Normal guibg=#151515")
    vim.cmd("hi Normal guibg=None")
    vim.cmd("hi NormalFloat guibg=#292522")
    vim.cmd("hi CursorLine guibg=#1d2021")
    vim.cmd("hi Todo guibg=#292522 guifg=#fabd2f")
    vim.cmd("hi Comment gui=None")
    vim.cmd("hi String gui=None")
    vim.cmd("hi! link Function GruvboxGreen")
    vim.cmd("hi! link FloatBorder GruvboxGray")
end

-- Vimwiki Support
vim.cmd("hi VimwikiHeader1 guifg=#FF6B81 gui=bold")
vim.cmd("hi VimwikiHeader2 guifg=#86C990 gui=bold")
vim.cmd("hi VimwikiHeader3 guifg=#7EA2F2 gui=bold")
vim.cmd("hi VimwikiHeader4 guifg=#B48EAD gui=bold")
vim.cmd("hi VimwikiHeader5 guifg=#6DC4CE gui=bold")
vim.cmd("hi VimwikiHeader6 guifg=#E5C07B gui=bold")
vim.cmd("hi VimwikiPre     guifg=#A9C388 gui=bold")

vim.cmd("hi Underlined guifg=#D9CAB3 gui=bold,underline")
