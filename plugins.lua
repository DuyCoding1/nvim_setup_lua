
return require('packer').startup(function()

--nerdtree
use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icon
  },
  config = function() require'nvim-tree'.setup {} end
}

--treesiiter
use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
}
use 'p00f/nvim-ts-rainbow'
use 'windwp/nvim-autopairs'

--themes
use 'navarasu/onedark.nvim'

--barbar and line
use {
'romgrk/barbar.nvim',
requires = {'kyazdani42/nvim-web-devicons'}
}
use {
'nvim-lualine/lualine.nvim',
requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

--comment
use 'terrortylor/nvim-comment'

--telescope
use {
'nvim-telescope/telescope.nvim',
requires = { {'nvim-lua/plenary.nvim'} }
}
--togg nd vista
use {"akinsho/toggleterm.nvim"}
use 'liuchengxu/vista.vim'

--phu
use "lukas-reineke/indent-blankline.nvim"
use 'matze/vim-move'

--lsp
use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
}
 -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  --dashboard
  use 'glepnir/dashboard-nvim'
--vimspector
  use 'puremourning/vimspector'


end)

