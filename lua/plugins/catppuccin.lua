return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        -- Customize the theme here
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
        background = { light = "latte", dark = "mocha" },
        term_colors = true,
      })
      
      -- Set the colorscheme
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}
