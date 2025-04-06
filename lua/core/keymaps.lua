-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local GetOpts = function(hint)
	return { noremap = true, silent = true, desc = hint }
end
-- Save file without auto-formatting
vim.keymap.set("n", "<C-s>", "<cmd>noautocmd w <CR>", GetOpts("Save file without auto-formatting"))

-- Save file with auto-formatting
vim.keymap.set("n", "<leader>sa", "<cmd> w <CR>", GetOpts("Save file with auto-formatting"))

-- Quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", GetOpts("Quit"))

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", GetOpts("Enlarge split horizontally"))
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", GetOpts("Reduce split horizontally"))
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", GetOpts("Enlarge split vertically"))
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", GetOpts("Reduce split vertically"))

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", GetOpts("Go to next buffer"))
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", GetOpts("Go to previous buffer"))
vim.keymap.set("n", "<leader>bx", ":Bdelete!<CR>", GetOpts("Close buffer"))
vim.keymap.set("n", "<leader>bn", "<cmd> enew <CR>", GetOpts("New buffer"))

for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, function()
		require("bufferline").go_to_buffer(i, true)
	end, GetOpts("Go to buffer " .. i))
end

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", GetOpts("Split window vertically"))
vim.keymap.set("n", "<leader>h", "<C-w>s", GetOpts("Split window horizontally"))
vim.keymap.set("n", "<leader>se", "<C-w>=", GetOpts("Make split windows equal width & height"))
vim.keymap.set("n", "<leader>sx", ":close<CR>", GetOpts("Close current split window"))

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", GetOpts("Go to top split"))
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", GetOpts("Go to bottom split"))
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", GetOpts("Go to left split"))
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", GetOpts("Go to rigth split"))

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", GetOpts("Open new tab"))
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", GetOpts("Close current tab"))
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", GetOpts("Go to next tab"))
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", GetOpts("Go to previous tab"))

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", GetOpts("Toggle line wrapping"))

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", GetOpts("Move text to right"))
vim.keymap.set("v", ">", ">gv", GetOpts("Move text to left"))

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', GetOpts())

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, GetOpts("Go to previous diagnostic message"))
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, GetOpts("Go to next diagnostic message"))
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, GetOpts("Open floating diagnostic message"))
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, GetOpts("Open diagnostics list"))

vim.keymap.set("n", "<C-n>", ":ene<CR>", GetOpts("Create new buffer"))

