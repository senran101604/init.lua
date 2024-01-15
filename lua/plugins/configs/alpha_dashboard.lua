--  require'alpha'.setup(require'alpha.themes.dashboard')
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local ascii_arts = require("plugins.configs.ascii_arts")

dashboard.section.header.val = ascii_arts.sharingan

dashboard.section.buttons.val = {
    dashboard.button("SPC f h", "🕒 Find History Files"),
    dashboard.button("SPC f H", "❓ Find Help"),
    dashboard.button("SPC f f", "🔎 Find Files"),
    dashboard.button("e", "  New file", "<cmd>ene <CR>"),
    dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
}

dashboard.section.footer.val = "Do More by Doing Less"

dashboard.section.header.opts.hl = "Operator"
dashboard.section.footer.opts.hl = "String"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

-- Keymap
vim.keymap.set('n', '<leader>A', ':Alpha <CR>', { noremap = true, silent = true })
