return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                           ]],
			[[████████╗██╗   ██╗██████╗ ██████╗  ██████╗ ]],
			[[╚══██╔══╝██║   ██║██╔══██╗██╔══██╗██╔═══██╗]],
			[[   ██║   ██║   ██║██████╔╝██████╔╝██║   ██║]],
			[[   ██║   ██║   ██║██╔══██╗██╔══██╗██║   ██║]],
			[[   ██║   ╚██████╔╝██║  ██║██████╔╝╚██████╔╝]],
			[[   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚═════╝ ]],
			[[                                           ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("<C-n>", "\tNew buffer", ":ene<CR>"),
			dashboard.button("SPC e", "󱏒\tOpen file tree", ":Neotree toggle<CR>"),
			dashboard.button("SPC s f", "󰮗\tSearch files", ":Telescope find_files<CR>"),
			dashboard.button("SPC s o", "\tRecently used files", ":Telescope oldfiles<CR>"),
			-- dashboard.button("", "|\tOpen project", ""),
			dashboard.button("<C-q>", "󰈆\tQuite", "<cmd> q <CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}
