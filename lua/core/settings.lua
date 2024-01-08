--   /$$$$$$              /$$     /$$     /$$                              
--  /$$__  $$            | $$    | $$    |__/                              
-- | $$  \__/  /$$$$$$  /$$$$$$ /$$$$$$   /$$ /$$$$$$$   /$$$$$$   /$$$$$$$
-- |  $$$$$$  /$$__  $$|_  $$_/|_  $$_/  | $$| $$__  $$ /$$__  $$ /$$_____/
--  \____  $$| $$$$$$$$  | $$    | $$    | $$| $$  \ $$| $$  \ $$|  $$$$$$ 
--  /$$  \ $$| $$_____/  | $$ /$$| $$ /$$| $$| $$  | $$| $$  | $$ \____  $$
-- |  $$$$$$/|  $$$$$$$  |  $$$$/|  $$$$/| $$| $$  | $$|  $$$$$$$ /$$$$$$$/
--  \______/  \_______/   \___/   \___/  |__/|__/  |__/ \____  $$|_______/ 
--                                                      /$$  \ $$          
--                      @senran101604                  |  $$$$$$/          
--                                                      \______/           
                                                                         
-- settings.lua
local opt = vim.opt
local g = vim.g
-- General Options --------------------------------------------------------------
-- Encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
-- Disable mouse support
opt.mouse = ""
-- Automatically detects and sets the filetype.
opt.filetype = 'on'
-- Enables syntax highlighting.
opt.syntax = 'enable'
-- Hides files when switching buffers.
opt.hidden = true
-- Disables backup and writebackup files.
opt.backup = false
opt.writebackup = false
-- Sets the command-line size default = 1.
-- opt.cmdheight = 1
-- Disables cursorline.
opt.cursorline = false
-- Sets the time in milliseconds for CursorHold events.
opt.updatetime = 50
-- Appends 'c' to 'shortmess', avoiding displaying some messages.
opt.shortmess:append 'csI'
-- Leader Key --------------------------------------------------------------------
-- Sets the mapleader to a space.
g.mapleader = ' '
-- Signcolumn --------------------------------------------------------------------
-- Configures the sign column to display line numbers if supported.
if vim.fn.has("patch-8.1.1564") then
  opt.signcolumn = 'number'
else
  opt.signcolumn = 'yes'
end
-- Cursor Style ------------------------------------------------------------------
-- Sets the cursor style to 'a:bar'.
opt.guicursor = 'a:bar'
-- Popup Menu --------------------------------------------------------------------
-- Sets the height of the popup menu.
opt.pumheight = 10
-- Sets the number of tab pages to display in the tabline.
-- opt.showtabline = 2
-- Line Numbers ------------------------------------------------------------------
-- Displays line numbers.
opt.number = true
-- Displays relative line numbers.
opt.relativenumber = true
-- Number of lines to keep above and below the cursor when scrolling.
opt.scrolloff = 7
-- Backspace ----------------------------------------------------------------------
-- Specifies how the backspace key behaves in insert mode.
opt.backspace = 'indent,eol,start'
-- Background ---------------------------------------------------------------------
-- Sets the background to 'dark'.
opt.background = 'dark'
-- Splitting Windows -------------------------------------------------------------
-- Opens new windows to the right and below the current window.
opt.splitright = true
opt.splitbelow = true
-- Timeouts and Wrapping ---------------------------------------------------------
-- Sets the time in milliseconds for CursorHold and CursorHoldI events.
opt.updatetime = 50
-- Disables line wrapping.
opt.wrap = false
-- Terminal Colors ----------------------------------------------------------------
-- Configures terminal-related settings based on Neovim or Vim.
opt.ruler = false
opt.showmode = false
opt.showcmd = true
opt.termguicolors = true
-- Tabs and Indentation ----------------------------------------------------------
vim.opt.smarttab = true
-- Disables swap files.
opt.swapfile = false
-- Sets the number of spaces a tab is equal to.
opt.tabstop = 4
-- Sets the number of spaces used for each step of autoindent.
opt.softtabstop = 4
-- Sets the number of spaces to use for each step of shiftwidth.
opt.shiftwidth = 4
-- Converts tabs to spaces.
opt.expandtab = true
-- Autoindent and Clipboard ------------------------------------------------------
-- Enables automatic indenting.
opt.autoindent = true
-- Appends 'unnamedplus' to the clipboard options.
opt.clipboard:append 'unnamedplus'
-- Search and Highlighting --------------------------------------------------------
-- Ignores case in search patterns.
opt.ignorecase = true
-- Overrides 'ignorecase' when the search pattern contains uppercase characters.
opt.smartcase = true
-- Highlights search patterns.
opt.hlsearch = true
-- Highlights as characters are typed in the search pattern.
opt.incsearch = true
-- Undo and Autowrite ------------------------------------------------------------
-- Enables persistent undo if supported.
if vim.fn.has('persistent_undo') then
  opt.undofile = true
end
-- Automatically writes changes before executing certain commands.
opt.autowrite = true
-- Command/History ---------------------------------------------------------------
-- Sets the maximum number of entries in the command-line history.
opt.history = 200
-- Conceal Cursor Configuration for Vimwiki
-- to avoid expanding links when hovering.
opt.concealcursor= 'nc'
-- ColorColumn

-- Uncomment the following lines if needed:
opt.colorcolumn = '80'
-- opt.completeopt = 'menuone,noinsert,noselect' -- Smart Completion
-- opt.wildmenu = true -- Wildmenu
-- opt.wildmode = 'list:longest' -- Wildmenu
-- opt.fillchars = 'vert:|,fold:-' -- Fillchars for visual separation
-- Smooth scrolling (Not specified in the original configuration)
