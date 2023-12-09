-- return {}
return {
    "shortcuts/no-neck-pain.nvim",
    keys = { { "<leader>wr", "<cmd>NoNeckPain<cr>", desc = "NoNeckPain: center buffer"} },
	config = {
		width = 140,
		buffers = {
			blend = 0.2,
			right = {
            enabled = false,
	},

        wo = {
            fillchars = "eob: ",
        },
    },

	}
}


