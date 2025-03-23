return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"moll/vim-bbye",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers", -- set to "tabs" to only show tabpages instead
				themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
				numbers = "ordinal", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
				close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
				buffer_close_icon = "✗",
				close_icon = "✗",
				path_components = 1, -- Show only the file name without the directory
				modified_icon = "●",
				left_trunc_marker = "",
				right_trunc_marker = "",
				max_name_length = 30,
				max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
				tab_size = 21,
				diagnostics = "nvim_lsp",
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
				separator_style = "slant", -- | "slant" | "thick" | "thin" | { 'any', 'any' },
				enforce_regular_tabs = true,
				always_show_bufferline = true,
				show_tab_indicators = false,
				indicator = {
					-- icon = '▎', -- this should be omitted if indicator style is not 'icon'
					style = "none", -- Options: 'icon', 'underline', 'none'
				},
				icon_pinned = "󰐃",
				minimum_padding = 1,
				maximum_padding = 5,
				maximum_length = 15,
				sort_by = "insert_at_end",
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neotree",
						highlight = "Directory",
						text_align = "center",
						padding = 1,
					},
					{
						filetype = "undotree",
						text = "Undotree",
						highlight = "Directory",
						text_align = "center",
						padding = 1,
					},
				},
				hover = { enabled = true },
			},
			highlights = {
				fill = {},
				background = {},
				separator = {},
				separator_selected = {},
				buffer_selected = {
					bold = true,
					italic = true,
				},
				-- tab_selected = {},
				-- indicator_selected = {},
			},
		})
		vim.diagnostic.config({ update_in_insert = true })
	end,
}
