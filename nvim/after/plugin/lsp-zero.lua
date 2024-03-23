local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")
lsp_zero.setup()

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({
    registries = {
        -- Python 3.7.x requires debugpy 1.7.0, so we downgrade in my user specific registry
        "github:danshank/mason-registry",
        "github:mason-org/mason-registry",
    },
    log_level = vim.log.levels.DEBUG
})

require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
  },
})

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['tsserver'] = {'javascript', 'typescript'},
    ['rust_analyzer'] = {'rust'},
    ['ast-grep '] = {'python'},
  }
})
