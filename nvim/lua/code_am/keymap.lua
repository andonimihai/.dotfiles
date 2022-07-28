local M = {}

local function bind(op, outer_opts)
    outer_opts = outeropts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts, 
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false})
M.nnoremap = bind("n")
M.vnoreamp = bind("v")
M.xnoreamp = bind("x")
M.inoreamp = bind("i")

return M
