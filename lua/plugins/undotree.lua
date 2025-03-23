return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set('n', '<leader>tu', vim.cmd.UndotreeToggle, {noremap = true, silent = true, desc = "Toggle undotree"})
	end
}

