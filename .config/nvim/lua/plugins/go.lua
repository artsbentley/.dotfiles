return {
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("go").setup({
			go = "go1.19.7",
		})
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}

-- -- rust
-- {
--   "simrat39/rust-tools.nvim",
--   event = "VeryLazy",
--   dependencies = {
--     "neovim/nvim-lspconfig",
--     "nvim-lua/plenary.nvim",
--     "mfussenegger/nvim-dap",
--   },
--   config = function()
--     require("rust-tools").setup()
--   end,
-- },