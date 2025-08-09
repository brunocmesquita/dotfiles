-- Modern lualine.nvim configuration inspired by popular Neovim setups
return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "datsfilipe/vesper.nvim",
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = "vesper",
          globalstatus = true,
          icons_enabled = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
          disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
        },
        sections = {
          lualine_a = { { "mode", icon = "" } },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { { "filename", path = 1 } },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = { "nvim-tree", "quickfix", "fugitive", "man", "symbols-outline" },
      })
    end,
  },
}
