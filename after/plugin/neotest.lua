

require("neotest").setup({
    require("neotest-plenary"),
    require("neotest-vim-test"),
    require("neotest-go"),
    require("neotest-python"),
})


local neotest = require("neotest")

vim.keymap.set("n", "<leader>nr", function() neotest.run.run() end)
vim.keymap.set("n", "<leader>nrf",function() neotest.run.run(vim.fn.expand('%')) end)
vim.keymap.set("n", "<leader>ns", function() neotest.run.stop() end)
vim.keymap.set("n", "<leader>nd", function() neotest.run.run({strategy = 'dap'}) end ) 
