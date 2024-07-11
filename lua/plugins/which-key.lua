return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    -- This controls the timeout when WhichKey opens,
    -- we don't want it opening immediately, but we don't want it to be slow
    -- either
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup()
  end,
}
