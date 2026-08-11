return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "catppuccin/nvim" },
	after = "catppuccin",
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin-mocha",
			},
		})
	end,
}
