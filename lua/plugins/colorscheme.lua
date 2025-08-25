return{
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            integrations = {
                barbar = true,
                blink_cmp = true,
                gitsigns = true,
                mason = true,
                noice = true,
                notify = true,
                nvimtree = true,
                rainbow_delimiters = true,
            }
        },
        config = function(_,opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin")
        end
    },
}
