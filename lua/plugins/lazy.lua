--  /$$                                      ||   /$$$$$$$  /$$                     /$$                    
-- | $$                                      ||  | $$__  $$| $$                    |__/                    
-- | $$        /$$$$$$  /$$$$$$$$ /$$   /$$  ||  | $$  \ $$| $$ /$$   /$$  /$$$$$$  /$$ /$$$$$$$   /$$$$$$$
-- | $$       |____  $$|____ /$$/| $$  | $$  ||  | $$$$$$$/| $$| $$  | $$ /$$__  $$| $$| $$__  $$ /$$_____/
-- | $$        /$$$$$$$   /$$$$/ | $$  | $$  ||  | $$____/ | $$| $$  | $$| $$  \ $$| $$| $$  \ $$|  $$$$$$ 
-- | $$       /$$__  $$  /$$__/  | $$  | $$  ||  | $$      | $$| $$  | $$| $$  | $$| $$| $$  | $$ \____  $$
-- | $$$$$$$$|  $$$$$$$ /$$$$$$$$|  $$$$$$$  ||  | $$      | $$|  $$$$$$/|  $$$$$$$| $$| $$  | $$ /$$$$$$$/
-- |________/ \_______/|________/ \____  $$  ||  |__/      |__/ \______/  \____  $$|__/|__/  |__/|_______/ 
--                                /$$  | $$  ||                           /$$  \ $$                        
--                               |  $$$$$$/  ||                          |  $$$$$$/                        
--                                \______/   ||                           \______/                         

-- Bootstrap Lazy Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  -- Colorschemes
  'savq/melange-nvim',
  { "ellisonleao/gruvbox.nvim",             priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Fun: Cellular Automaton in Neovim
  'eandrju/cellular-automaton.nvim',

  -- Colorizer
  'norcalli/nvim-colorizer.lua',

  -- Floating Terminal
  'voldikss/vim-floaterm',

  -- File Explorer:  Edit your filesystem like a buffer.
  'stevearc/oil.nvim',

  -- Distraction-free coding for Neovim, Goyo and Limelight replacement ( lua version )
  {
    'folke/zen-mode.nvim',
    dependencies = {
        "folke/twilight.nvim",
    },
  },

  {
    -- Fuzzy finder for Neovim
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- Lua module library for Neovim
      dependencies = {
          'nvim-lua/plenary.nvim',
      }
    },


  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  -- StatusLine
 {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
  },

  -- Markdown Preview
  {
      "iamcco/markdown-preview.nvim",
      cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
      ft = { "markdown" },
      build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- Commenter
  {
      'numToStr/Comment.nvim',
      lazy = false,
  },

 -- Personal Wiki for Neovim
 {
    "vimwiki/vimwiki",
    event = "BufEnter *.md",
    keys = { "<leader>ww", "<leader>wt" },
    init = function()
        vim.g.vimwiki_folding = ""
        vim.g.vimwiki_list = {
            {
                path = "~/.vault/work",
                syntax = "markdown",
                ext = ".md",
            },
            {
                path = "~/.vault/rain",
                syntax = "markdown",
                ext = ".md",
            },
        }
        vim.g.vimwiki_ext2syntax = {
            [".md"] = "markdown",
            [".markdown"] = "markdown",
            [".mdown"] = "markdown",
        }
    end,
    },

  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      -- Additional lua configuration, makes nvim stuff amazing!
      -- 'folke/neodev.nvim',
    },
  },


  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      -- Completion for Paths
      'hrsh7th/cmp-path',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },

  -- ( Add, Delete, Change ) Surrounding pairs pretty easily.
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },

  -- Startup Alpha Dashboard
  {
      'goolord/alpha-nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
})
