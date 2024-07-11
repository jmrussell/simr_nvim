return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
        require("telescope").setup({
            extensions = {
                fzf = {
                    fuzzy = true, -- false will only do exact matching
                    case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                },
            },
        })
    end
}
