return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
    local builtin = require('telescope.builtin')
    local opts = { buffer = bufnr, noremap = true, silent = true }
    vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
    vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
    vim.keymap.set('n', '<leader>fg', builtin.git_files, opts)
    vim.keymap.set('n', '<leader>fw', builtin.live_grep, opts)
    end
}

