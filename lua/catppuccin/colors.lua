-- latte, frappe, macchiato, mocha
vim.g.catppuccin_flavour = "frappe"

require("catppuccin").setup({
	transparent_background = false,
	term_colors = false,
  compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		treesitter = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
    nvimtree = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	highlight_overrides = {},
})

vim.cmd [[colorscheme catppuccin]]

local ctp_feline = require('catppuccin.groups.integrations.feline')
require("feline").setup({
	components = ctp_feline.get(),
})
