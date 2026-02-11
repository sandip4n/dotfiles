return {
  -- Add dracula
  {
    "dracula/vim",
    priority = 1000,
  },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
