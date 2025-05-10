return {
	"echasnovski/mini.trailspace",
	config = function()
		require('mini.trailspace').setup({
			only_in_normal_buffers = true,
			vim.api.nvim_set_hl(0, 'MiniTrailspace', { fg = '#FFFFFF', bg = '#6c4675' }),

			vim.keymap.set("n", "<leader>dtw", function() vim.cmd([[silent! %s/\s\+$//e]]) end, { noremap = true, silent = true, desc = "Delete trailing whitespace" })
		})
	end
}
