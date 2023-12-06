--   /$$$$$$                    @senran101604                                 /$$          
--  /$$__  $$                                                                | $$          
-- | $$  \__/  /$$$$$$  /$$$$$$/$$$$  /$$$$$$/$$$$   /$$$$$$  /$$$$$$$   /$$$$$$$  /$$$$$$$
-- | $$       /$$__  $$| $$_  $$_  $$| $$_  $$_  $$ |____  $$| $$__  $$ /$$__  $$ /$$_____/
-- | $$      | $$  \ $$| $$ \ $$ \ $$| $$ \ $$ \ $$  /$$$$$$$| $$  \ $$| $$  | $$|  $$$$$$ 
-- | $$    $$| $$  | $$| $$ | $$ | $$| $$ | $$ | $$ /$$__  $$| $$  | $$| $$  | $$ \____  $$
-- |  $$$$$$/|  $$$$$$/| $$ | $$ | $$| $$ | $$ | $$|  $$$$$$$| $$  | $$|  $$$$$$$ /$$$$$$$/
--  \______/  \______/ |__/ |__/ |__/|__/ |__/ |__/ \_______/|__/  |__/ \_______/|_______/ 
                                                                                        
-- Define a function to trim white spaces from the entire file
function TrimWhiteSpace()
    local save_view = vim.fn.winsaveview()

    -- Using the keepjumps option to avoid modifying the jumplist
    vim.cmd('keeppatterns %s/\\s\\+$//e')

    vim.fn.winrestview(save_view)
end

--------------------------------- Commands -----------------------------------
-- Create a command that calls the TrimWhiteSpace function
vim.cmd('command! TrimWhiteSpace call v:lua.TrimWhiteSpace()')
-- Fix line endings
vim.cmd([[
  command! -nargs=0 FixLineEndings :%s/\r$//
]])
