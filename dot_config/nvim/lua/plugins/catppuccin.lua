return {
  {
    "catppuccin/nvim",
    dependencies = {
      "LazyVim/LazyVim",
    },
    opts = {
      auto_integrations = true,
      flavour = "mocha",
      float = {
        transparent = true,
      },
      transparent_background = true,
    },
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
