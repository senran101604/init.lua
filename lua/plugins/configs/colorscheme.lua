vim.cmd.colorscheme 'melange'

local current_colorscheme = vim.g.colors_name

-- Melange
if current_colorscheme == "melange" then
    -- vim.cmd("hi Normal guibg=#151515")
    -- vim.cmd("hi ColorColumn guibg=#292522")
    vim.cmd("hi String gui=None")
    vim.cmd("hi Normal guibg=None")
    vim.cmd("hi ColorColumn guibg=None")
-- TeraFox from nightfox.nvim
elseif current_colorscheme == "terafox" then
    vim.cmd("hi String gui=None")
    vim.cmd("hi Normal guibg=#151515")
    vim.cmd("hi CursorLine guibg=#1d2021")
    vim.cmd("hi! link NormalNC Normal")
end
