local nnoremap = require("code_am.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- remap the split navigation
nnoremap("<leader>w", "<C-w>k")
nnoremap("<leader>a", "<C-w>h")
nnoremap("<leader>s", "<C-w>j")
nnoremap("<leader>d", "<C-w>l")

-- fuzzy finder with Telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- file manager mapppins(neo-tree)
nnoremap("<leader>b", "<cmd>Neotree filesystem reveal toggle left<cr>")

-- navigation on buffers
nnoremap("<leader>j", ":bp<CR>")
nnoremap("<leader>k", ":bn<CR>")
