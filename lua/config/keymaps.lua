-- Basic settings for all key mappings
local map = vim.keymap.set

-- ── Telescope ───────────────────────────────────────────────────────
local tt = require("telescope.builtin")

map("n", "<leader>ff", tt.find_files, { noremap = true, silent = true, desc = "Find Files" })
map("n", "<leader>fc", tt.commands, { noremap = true, silent = true, desc = "List commands" })
map("n", "<leader>fg", tt.live_grep, { noremap = true, silent = true, desc = "Grep live" })
map("n", "<leader>fb", tt.buffers, { noremap = true, silent = true, desc = "List buffers" })
map("n", "<leader>fo", tt.oldfiles, { noremap = true, silent = true, desc = "List recently opened files" })
map("n", "<leader>fk", tt.keymaps, { noremap = true, silent = true, desc = "List keymaps" })
map("n", "<leader>fj", tt.jumplist, { noremap = true, silent = true, desc = "List jumplist" })
map("n", "<leader>fr", tt.registers, { noremap = true, silent = true, desc = "List register contents" })
map("n", "<leader>fh", tt.help_tags, { noremap = true, silent = true, desc = "List help tags" })
map("n", "<leader>ft", ":Telescope<CR>", { noremap = true, silent = true, desc = "Open telescope menu" })

require('leap').create_default_mappings() 
---- ── System utilites ─────────────────────────────────────────────────
-- Prefix a yank with 'g' to send it to the system clipboard
map({ "n", "x" }, "gy", '"+y', { noremap = true, silent = true, desc = "Yank to system clipboard" })
-- Prefix a paste to use the system clipboard instead of what's in the current buffer
map("n", "gp", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard" })
map("x", "gp", '"+P', { noremap = true, silent = true, desc = "Paste in visual mode from clipboard" })

---- ── Copilot ─────────────────────────────────────────────────────────
---- Default is to always have this shit popping up, we only want it when we want it
--map({ "i", "n" }, "<C-l>", function()
--	require("copilot.suggestion").next()
--end, { noremap = true, silent = true, desc = "Trigger Copilot suggestion" })
--
-- ── LSP ─────────────────────────────────────────────────────────────
map("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to definition" })
map("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "Show hover information" })
map("n", "gi", vim.lsp.buf.implementation, { noremap = true, silent = true, desc = "List implementations" })
map("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "Rename symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "Show code actions" })
map("n", "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Go to previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Go to next diagnostic" })
map("n", "<leader>e", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Open diagnostic float" })
map(
	"n",
	"<leader>q",
	vim.diagnostic.setloclist,
	{ noremap = true, silent = true, desc = "Set diagnostic to location list" }
)

---- ── Neotree ─────────────────────────────────────────────────────────
--map("n", "<leader>nt", ":Neotree<CR>", { noremap = true, silent = true, desc = "Toggle neotree" })
--
---- ── YAREPL ──────────────────────────────────────────────────────────
---- Map ReplStart to localleader rs
--map("n", "<localleader>rs", ":REPLStart python<CR>", { noremap = true, silent = true, desc = "Start REPL" })
---- "localleader l send line
--map("n", "<localleader>l", ":REPLSendLine<CR>", { noremap = true, silent = true, desc = "Send line to REPL" })
---- See https://github.com/milanglacier/yarepl.nvim/issues/11#issuecomment-1590400056
---- for why we're using C-U
--map(
--	"v",
--	"<localleader>l",
--	":<C-U>REPLSendVisual<CR>",
--	{ noremap = true, silent = true, desc = "Sends visual selection to REPL" }
--)
---- localleader o send operator"
--map("n", "<localleader>o", ":REPLSendOperator<CR>", { noremap = true, silent = true, desc = "Send operator to REPL" })
--
---- ── CommentBox ──────────────────────────────────────────────────────
---- left aligned fixed size box with left aligned text
--map({ "n", "v" }, "<Leader>cb", "<Cmd>CBllbox<CR>", opts)
---- centered adapted box
--map({ "n", "v" }, "<Leader>cc", "<Cmd>CBacbox<CR>", opts)
--
---- left aligned titled line with left aligned text
--map({ "n", "v" }, "<Leader>ct", "<Cmd>CBllline<CR>", opts)
--
---- ── Terminal buffers ────────────────────────────────────────────────
---- Mistakenly hitting shift before these characters would insert '2u'
--map("t", "<S-Enter>", "<Enter>", { desc = "Insert enter" })
--map("t", "<S-Space>", "<Space>", { desc = "Insert space" })
--map("t", "<S-Backspace>", "<Backspace>", { desc = "do a backspace" })
--
--map("t", "<esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
--map("n", "<localleader>z", ":ZenMode<CR>", { noremap = true, silent = true, desc = "Toggle ZenMode" })
---- Use <localleader>h to open toggle term horizontal, half the size of the screen
--map(
--	"n",
--	"<localleader>h",
--	":ToggleTerm direction=horizontal size=20<CR>",
--	{ noremap = true, silent = true, desc = "Toggle horizontal terminal" }
--)
--
---- Enable ctrl-w j/h/w/l in terminal mode to move buffer focus
--map("t", "<C-w>j", "<C-\\><C-n><C-w>j", { noremap = true, silent = true, desc = "Move focus to below buffer" })
--map("t", "<C-w>k", "<C-\\><C-n><C-w>k", { noremap = true, silent = true, desc = "Move focus to above buffer" })
--map("t", "<C-w>h", "<C-\\><C-n><C-w>h", { noremap = true, silent = true, desc = "Move focus to left buffer" })
--map("t", "<C-w>l", "<C-\\><C-n><C-w>l", { noremap = true, silent = true, desc = "Move focus to right buffer" })
--
---- Use <localleader><tn> to toggle number, and <rn> to toggle relativenumbers
--map("n", "<localleader>tn", ":set number!<CR>", { noremap = true, silent = true, desc = "Toggle line numbers" })
--map(
--	"n",
--	"<localleader>rn",
--	":set relativenumber!<CR>",
--	{ noremap = true, silent = true, desc = "Toggle relative numbers" }
--)
