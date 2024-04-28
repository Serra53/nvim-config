

function ColorMyPencils(color)
    color = color or "everforest"--gruvbox-material
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
    vim.api.nvim_set_hl(0, "EndofBuffer", {bg="none"})
end

function ColorMyGruvbox()
    require("gruvbox-material").setup()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "EndOfBuffer", {bg = "none"})
end

ColorMyPencils()

