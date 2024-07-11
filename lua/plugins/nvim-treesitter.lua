return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "python", "r" },
      auto_install = true,
      highlight = { enable = true },
    })
  end,
}
