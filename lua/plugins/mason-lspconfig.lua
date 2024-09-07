  return {
    {
      "williamboman/mason.nvim",
      name = "mason",
      config = function()
        require('mason').setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      name = "mason-lsp",
      config = function()
        require('mason-lspconfig').setup({
          ensure_installed = { "lua_ls", "tsserver" }
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      name = "nvim-lspconfig",
      config = function()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        lspconfig.lua_ls.setup({
          capabilities = capabilities
        })
        lspconfig.ts_ls.setup({
          capabilities = capabilities
        })
        local opts = { buffer = bufnr, noremap = true, silent = true }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '[g', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']g', vim.diagnostic.goto_next, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        -- vim.keymap.set('n', '<leader>qr', vim.lsp.buf.code_action, opts)
      end
    }
  }
