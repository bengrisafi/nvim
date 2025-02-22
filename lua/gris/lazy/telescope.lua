-- fuzzy finder my guy
return {
  "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require('telescope').setup({})

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>pws', function()
          local word = vim.fn.expand("<cword>")
          builtin.live_grep({ search = word })
          end)
      vim.keymap.set('n', '<leader>pWs', function()
          local word = vim.fn.expand("<cWORD>")
          builtin.live_grep({ search = word })
          end)
      vim.keymap.set('n', '<leader>ps', function()
          builtin.live_grep({ search = vim.fn.input("Grep > ") })
          end)
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
      end
}

