return {
  {
    "morhetz/gruvbox",
    priority = 1000,
    config = function()
      vim.o.background = "dark"
      vim.g.gruvbox_contrast_dark = "hard"
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
