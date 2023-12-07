-- Pickers customization
require('telescope').setup{
  defaults = {
    layout_config = {
        -- Display the prompt at the top.
        prompt_position = "top",
    },
    -- Display result from top to bottom
    sorting_strategy = "ascending",
  },
  pickers = {
    builtin = {
        theme = "dropdown",
        previewer = false,
    },
    colorscheme = {
        theme = "dropdown",
        previewer = false,
    },
    oldfiles = {
        prompt_title = "History Files",
        wrap_results = true,
    },
    commands = {
        theme = "dropdown",
    },
  },
  -- Extensions
  extensions = {
    file_browser = {
        -- use the "ivy" theme if you want
        theme = "ivy",
        prompt_title ="File Explorer",
    },
  },
}

local builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set('n', '<leader>ft', builtin.builtin, {})
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fc', builtin.commands, {})
keymap.set('n', '<leader>fH', builtin.help_tags, {})
keymap.set('n', '<leader>fh', builtin.oldfiles, {})
keymap.set('n', '<leader>f:', builtin.command_history, {})
keymap.set('n', '<leader>fs', builtin.colorscheme, {})

-- Load Extensions Extensions
require('telescope').load_extension('file_browser')
require("aerial").setup()
require("telescope").load_extension("aerial")
-- Telescope File Browser
keymap.set('n', '<leader>fe', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { silent = true })
-- Telescope Aerial
keymap.set('n', '<leader>fa', ":Telescope  aerial<CR>", { noremap=true, silent = true })
