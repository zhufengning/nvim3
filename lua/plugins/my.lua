return {
  { "simrat39/rust-tools.nvim" },
  { "mini.pairs", enabled = false },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          enabled = true,
        },
        basedpyright = {
          enabled = false,
        },
        ruff = {
          enabled = false,
          autostart = false,
        },
        ruff_lsp = {
          enabled = false,
          autostart = false,
        },
      },
      setup = {
        ruff = function()
          LazyVim.lsp.on_attach(function(client, _)
            if client.name == "ruff" then
              -- Disable hover in favor of Pyright
              client.server_capabilities.hoverProvider = false
            end
          end)
        end,
      },
    },
  },
}
