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
        ruff_lsp = {
          enabled = false,
          autostart = false,
        },
      },
    },
  },
}
