return{
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            options = {
                theme = "catppuccin",
                always_divide_middle = false,
                component_separators = {left = " ",right = " "},
                section_separators = {left ="",right = ""}
            },
            sections = {
                lualine_a = {"mode"},
                lualine_b = {"branck","diff","diagnostics"},
                lualine_c = {"filename"},
                lualine_x = {},
                lualine_y = {"encoding","fileformat","filetype","progress"},
                lualine_z = {"location"},
            },
            winbar = {
                lualine_a = {
                    "filename"
                },
                lualine_b = {
                    {function() return " "end, color = 'Comment'},
                },
                lualine_x = {
                    "lsp_status"
                }
            },
        }
    },

    {
        "romgrk/barbar.nvim",
        version = "^1.0.0",
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        init = function()
            vim.g.barbar_auto_setup = false
        end,
        opts = {},
    },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {}
    },
    
    {
        "HiPhish/rainbow-delimiters.nvim",
        submodules = false,
        main = "rainbow-delimiters.setup",
        opts = {}
    },

    -- lazy.nvim
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
        -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    }
}
