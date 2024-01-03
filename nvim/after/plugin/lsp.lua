-- local servers = {
--   "bashls",
--   "cssls",
--   "gopls",
--   "lua_ls",
--   "tailwindcss",
--   "tsserver",
--   "prismals",
-- }
-- local has_formatter = { "gopls", "tsserver" }
-- for _, name in pairs(servers) do
--   local found, server = require("nvim-lsp-installer").get_server(name)
--   if found and not server:is_installed() then
--     print("Installing " .. name)
--     server:install()
--   end
-- end
-- local setup_server = {
--   lua_ls = function(opts)
--     opts.settings = { Lua = { diagnostics = { globals = { "vim" } } } }
--   end,
-- }
-- require("nvim-lsp-installer").on_server_ready(function(server)
--   local opts = {
--     on_attach = function(client, bufnr)
--       vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
--       local opts = { buffer = bufnr }
--       vim.keymap.set("n", "<Leader>h", vim.lsp.buf.hover, opts)
--       vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
--       vim.keymap.set("n", "<Leader>r", vim.lsp.buf.rename, opts)
--       local should_format = true
--       for _, value in pairs(has_formatter) do
--         if client.name == value then
--           should_format = false
--         end
--       end
--       if not should_format then
--         client.server_capabilities.document_formatting = false
--       end
--     end,
--     capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
--   }
--   if setup_server[server.name] then
--     setup_server[server.name](opts)
--   end
--   server:setup(opts)
-- end)
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "bashls", "cssls", "lua_ls", "tailwindcss", "tsserver", "prismals" },
}

local lspconfig = require('lspconfig')
lspconfig.bashls.setup {}
lspconfig.cssls.setup {}
lspconfig.gopls.setup {}
lspconfig.lua_ls.setup {}
lspconfig.tailwindcss.setup {}
lspconfig.tsserver.setup {}
lspconfig.prismals.setup {}


-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})