local builtin = require('telescope.builtin')
local keymap = vim.keymap

-- Extensions
require('telescope').load_extension('file_browser')
require("aerial").setup()
require("telescope").load_extension("aerial")

keymap.set('n', '<leader>ft', ":Telescope<CR>", { silent = true })
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fc', builtin.commands, {})
keymap.set('n', '<leader>fH', builtin.help_tags, {})
keymap.set('n', '<leader>fh', builtin.oldfiles, {})
keymap.set('n', '<leader>f:', builtin.command_history, {})
keymap.set('n', '<leader>fs', builtin.colorscheme, {})
-- Telescope File Browser
keymap.set('n', '<leader>e', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { silent = true })
keymap.set('n', '<leader>fa', ":Telescope  aerial<CR>", { silent = true })
