
local mode_colors = {}

function mode_colors.set_cursorline_color()
    local mode = vim.fn.mode()
    if mode == 'n' then
        vim.opt.cursorline = true
        vim.api.nvim_command('highlight CursorLine ctermbg=darkgray guibg=#505050')
    elseif mode == 'v' or move == 'V' then
        vim.opt.cursorline = true
        vim.api.nvim_command('highlight CursorLine ctermbg=lightyellow guibg=#505050')
    else
        vim.opt.cursorline = false
    end
end

vim.api.nvim_create_autocmd({"ModeChanged"}, {
    pattern = {"*:*"},
    callback = mode_colors.set_cursorline_color,
})


return mode_colors
