-- Pickers customization
require('telescope').setup{
  defaults = {
    layout_config = {
        width = 0.9,
        height = 0.9,
        -- Display the prompt at the top.
        prompt_position = "top",
        preview_cutoff = 0,
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
        cwd = '~', -- Set the current working directory to '~'
    },
    commands = {
        theme = "dropdown",
    },
    treesitter = {
        previewer = true,
    },
  },
  -- Extensions
  extensions = {
    -- extensions configuration
  },
}

local builtin = require('telescope.builtin')
local keymap = vim.keymap

keymap.set('n', '<leader>ft', builtin.builtin, {})
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fc', builtin.commands, {})
keymap.set('n', '<leader>fd', builtin.diagnostics, {})
keymap.set('n', '<leader>fH', builtin.help_tags, {})
keymap.set('n', '<leader>fh', builtin.oldfiles, {})
keymap.set('n', '<leader>f:', builtin.command_history, {})
keymap.set('n', '<leader>fs', builtin.colorscheme, {})
keymap.set('n', '<leader>fa', ":Telescope  treesitter<CR>", { noremap=true, silent = true })
