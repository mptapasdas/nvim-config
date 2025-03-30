return {
	"numToStr/FTerm.nvim",
	config = function()
		require("FTerm").setup({
			border = "rounded",
			dimensions = {
				height = 0.6,
				width = 0.5,
				x = 0.9,
				y = 0.1,
			},
		})

		-- Keybindings for toggling
		vim.keymap.set(
			"n",
			"<leader>tt",
			'<CMD>lua require("FTerm").toggle()<CR>',
			{ desc = "[T]oggle Floating [T]erminal" }
		)
		vim.keymap.set(
			"t",
			"<leader>tt",
			'<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>',
			{ desc = "[T]oggle Floating [T]erminal" }
		)
	end,
}
