local nnoremap = require("code_am.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- remap the split navigation
nnoremap("<leader>w", "<C-w>k")
nnoremap("<leader>a", "<C-w>h")
nnoremap("<leader>s", "<C-w>j")
nnoremap("<leader>d", "<C-w>l")

-- file manager mapppins(neo-tree)
nnoremap("<leader>b", "<cmd>Neotree filesystem reveal toggle left<cr>")

-- navigation on buffers
nnoremap("<leader>j", ":bp<CR>")
nnoremap("<leader>k", ":bn<CR>")
nnoremap("<leader>q", ":bprevious<CR>:bdelete #<CR>")

-- show/hide issue panel
nnoremap("<leader>xx", "<cmd>TroubleToggle<cr>")

-- better half-page naviation
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
