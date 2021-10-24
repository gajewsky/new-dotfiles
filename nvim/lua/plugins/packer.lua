-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- Bootstrap packer.nvim if not installed

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

-- Add packages
-- for packages info see: init.lua (Lua modules)
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use 'kyazdani42/nvim-tree.lua'
  use 'Yggdroot/indentLine'
  use 'windwp/nvim-autopairs'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'
  use 'morhetz/gruvbox'
  use 'neovim/nvim-lspconfig'

  use { 'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  use { 'famiu/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  use { 'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  use { 'justincampbell/vim-eighties' }

  -- FZF
  use { 'junegunn/fzf', run = './install --bin' }
  use { 'junegunn/fzf.vim' }

  -- Ruby
  use { 'vim-ruby/vim-ruby' }
  use { 'tpope/vim-rails' }
  use { 'tpope/vim-endwise' }
  use { 'AndrewRadev/splitjoin.vim' }
  use { 'unblevable/quick-scope' }
end)
