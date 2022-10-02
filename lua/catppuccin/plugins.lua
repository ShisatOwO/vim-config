local fn = vim.fn

-- packer auto install
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git", "clone",
    "--depth", "1",
    "https://www.github.com/wbthomason/packer.nvim",
    install_path,
  }
  print("intsalling Packer now, please restart nvim")
  vim.cmd [[packadd packer.nvim]]
end


-- reload nvim whenever this file changes
vim.cmd[[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float {border="rounded"}
    end,
  }
}

-- Plugins
return packer.startup(function(use)
  -- Needed by packer
  use "wbthomason/packer.nvim"
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "sidebar-nvim/sidebar.nvim"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "windwp/nvim-autopairs"

  -- Lsp
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run=":TSUpdate"}

  -- Theme
  use { "catppuccin/nvim", as = "catppuccin" }
  use "p00f/nvim-ts-rainbow"
  use "DanilaMihailov/beacon.nvim"
  use "feline-nvim/feline.nvim"
  use "kyazdani42/nvim-web-devicons"

  -- Misc
  use "nvim-telescope/telescope.nvim"
  use "akinsho/toggleterm.nvim"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
