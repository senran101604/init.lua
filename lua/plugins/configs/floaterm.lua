-- Conditional mappings based on file type
-- Note: Lua doesn't have direct support for filetype conditionals in this context
-- You might need to handle this differently based on your specific needs

-- Don't enter insert mode when floaterm is loaded
vim.g.floaterm_autoinsert = true

-- Set PowerShell as the terminal if the OS is Windows 10
if vim.fn.has("win32") == 1 then
    vim.g.floaterm_shell = "pwsh -nologo"
end

vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9
vim.g.floaterm_titleposition = 'center'

-- Define floaterm mappings
-- vim.keymap.set('n', '<leader>tn', ':FloatermNew! cd %:p:h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tn', ':FloatermNew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tt', ':FloatermToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ts', ':FloatermShow<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>th', ':FloatermHide<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t1', ':FloatermPrev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t2', ':FloatermNext<CR>', { noremap = true, silent = true })
--  Ranger
vim.api.nvim_set_keymap('n', '<leader>fe', ":FloatermNew ranger<CR>", { noremap = true, silent = true })
