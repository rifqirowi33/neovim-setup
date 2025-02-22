local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'kyazdani42/nvim-web-devicons'
    use 'L3MON4D3/LuaSnip'
    use 'hoob3rt/lualine.nvim' --Statusline
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig' -- LSP
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim'
end)
