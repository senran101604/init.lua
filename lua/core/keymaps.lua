--  /$$   /$$                 @senran101604                                                 
-- | $$  /$$/                                                                
-- | $$ /$$/   /$$$$$$  /$$   /$$ /$$$$$$/$$$$   /$$$$$$   /$$$$$$   /$$$$$$$
-- | $$$$$/   /$$__  $$| $$  | $$| $$_  $$_  $$ |____  $$ /$$__  $$ /$$_____/
-- | $$  $$  | $$$$$$$$| $$  | $$| $$ \ $$ \ $$  /$$$$$$$| $$  \ $$|  $$$$$$ 
-- | $$\  $$ | $$_____/| $$  | $$| $$ | $$ | $$ /$$__  $$| $$  | $$ \____  $$
-- | $$ \  $$|  $$$$$$$|  $$$$$$$| $$ | $$ | $$|  $$$$$$$| $$$$$$$/ /$$$$$$$/
-- |__/  \__/ \_______/ \____  $$|__/ |__/ |__/ \_______/| $$____/ |_______/ 
--                      /$$  | $$                        | $$                
--                     |  $$$$$$/                        | $$                
--                      \______/                         |__/                

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Windows Navigation ===============================================
-- Easily jump to different windows
keymap.set('n', '<leader>h', ':wincmd h<CR>', opts)
keymap.set('n', '<leader>k', ':wincmd k<CR>', opts)
keymap.set('n', '<leader>j', ':wincmd j<CR>', opts)
keymap.set('n', '<leader>l', ':wincmd l<CR>', opts)

-- Use Alt + hjkl to resize windows
keymap.set('n', '<M-k>', ':resize -1<CR>', opts)
keymap.set('n', '<M-j>', ':resize +1<CR>', opts)
keymap.set('n', '<M-l>', ':vertical resize -1<CR>', opts)
keymap.set('n', '<M-h>', ':vertical resize +1<CR>', opts)

-- Terminal Specific =============================================
keymap.set('t', '<C-[>', '<C-\\><C-n>', opts)

-- Clear search highlighting
keymap.set('n', '<leader>,', ':noh<CR>', opts)

-- Buffer Navigation ============================================
-- Switch between buffers
keymap.set('n', ']b', ':bnext<CR>', opts)
keymap.set('n', '[b', ':bprev<CR>', opts)

-- Tabs Navigation ===============================================
keymap.set('n', ']t', ':tabn<CR>', opts)
keymap.set('n', '[t', ':tabp<CR>', opts)

-- Tab and Shift-Tab for popup menu selection
keymap.set('i', '<tab>', function()
    return vim.fn.pumvisible() == 1 and "<C-n>" or "<tab>"
end, { expr = true })

keymap.set('i', '<S-TAB>', function()
   return vim.fn.pumvisible() == 1 and "<C-p>" or "<C-h>"
end, { expr = true })

-- Highlight every other line
-- vim.keymap.set('n', '<leader><Tab>', ':set hls<CR>/\n.*/<CR>', { noremap = true })

-- Toggle between horizontal and vertical splits
keymap.set('n', '<leader>th', '<C-w>t<C-w>H', opts)
keymap.set('n', '<leader>tk', '<C-w>t<C-w>K', opts)

-- Smooth Scrolling =============================================
keymap.set('n', '<C-U>', '<C-Y><C-Y><C-Y>', opts)
keymap.set('n', '<C-D>', '<C-E><C-E><C-E>', opts)

-- Save and Reload ==============================================
-- Reload Vim configuration
keymap.set('n', '<C-s>', ':so %<CR>', { noremap = true })

-- Fast Toggle Colorcolumn
keymap.set('n', '<leader>cl', ':execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>', { noremap = true, silent=true})
