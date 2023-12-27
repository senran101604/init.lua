vim.cmd.colorscheme 'melange'

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

