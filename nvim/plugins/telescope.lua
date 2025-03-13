
-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',

    dependencies = {
        'nvim-lua/plenary.nvim',
    },

    config = function()

        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files tracked by git' })
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({search = vim.fn.input("Grep > ") });
        end)
    --vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    --vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    --vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
}
