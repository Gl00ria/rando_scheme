if vim.fn.has("nvim-0.6.0") == 0 then
    vim.api.nvim_err_writeln("rando_scheme requires at least nvim-0.6.0")
    return
end
