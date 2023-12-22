--   /$$$$$$              /$$          @senran101604                      /$$          
--  /$$__  $$            | $$                                            | $$          
-- | $$  \ $$ /$$   /$$ /$$$$$$    /$$$$$$   /$$$$$$$ /$$$$$$/$$$$   /$$$$$$$  /$$$$$$$
-- | $$$$$$$$| $$  | $$|_  $$_/   /$$__  $$ /$$_____/| $$_  $$_  $$ /$$__  $$ /$$_____/
-- | $$__  $$| $$  | $$  | $$    | $$  \ $$| $$      | $$ \ $$ \ $$| $$  | $$|  $$$$$$ 
-- | $$  | $$| $$  | $$  | $$ /$$| $$  | $$| $$      | $$ | $$ | $$| $$  | $$ \____  $$
-- | $$  | $$|  $$$$$$/  |  $$$$/|  $$$$$$/|  $$$$$$$| $$ | $$ | $$|  $$$$$$$ /$$$$$$$/
-- |__/  |__/ \______/    \___/   \______/  \_______/|__/ |__/ |__/ \_______/|_______/ 
                                                                                    
                                                                                    
-- Disable continuation of comments to the next line
vim.api.nvim_exec([[
  augroup DisableCommentContinuation
    autocmd!
    autocmd BufNewFile,BufRead,BufEnter * setlocal formatoptions-=cro
  augroup END
]], false)

-- Set working directory to the location of the currently active buffer
vim.api.nvim_exec([[
  augroup SetWorkingDir
    autocmd!
    autocmd BufEnter * silent! lcd %:p:h
  augroup END
]], false)

-- Jump to the last position when reopening a file
vim.api.nvim_exec([[
  autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit' | exe "normal! g`\"" | endif
]], false)

-- Set line numbering based on mode
-- vim.api.nvim_exec([[
--   augroup LineNumberSettings
--     autocmd!
--     autocmd InsertEnter * set norelativenumber
--     autocmd InsertLeave * set relativenumber
--   augroup END
-- ]], false)

-- Disable Cursorline on Inactive Windows
vim.api.nvim_exec([[
  augroup DynamicCursorline
    autocmd!
    autocmd WinEnter * set cursorline
    autocmd WinLeave * set nocursorline
  augroup END
]], false)
