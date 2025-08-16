return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    opts = {
        --
    },
    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false, -- disables setting the background color
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = true, -- dims the background color of inactive windows
                shade = "dark",
                percentage = 0.10, -- percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general highlight groups
                comments = { "italic" },
                conditionals = { "italic" },
                loops = {},
                functions = { "bold" },
                keywords = { "bold" },
                strings = { "italic" },
                variables = {},
                numbers = {},
                booleans = { "bold" },
                properties = {},
                types = {},
                operators = {},
            -- miscs = {}, -- Uncomment to turn off hard-coded styles

            },
            color_overrides = {},
            custom_highlights = {},
            default_integrations = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                neotree = false,
                nvimtree = true,
                barbecue = {
                    dim_dirname = true, -- directory name is dimmed by default
                    bold_basename = true,
                    dim_context = false,
                    alt_background = false,
                },
                indent_blankline = {
                    enabled = true,
                    scope_color = "blue", -- catppuccin color (eg. `lavender`) Default: text
                    colored_indent_levels = false,
                },
                telescope = {
                    enable = true,
                },
                treesitter = true,
                notify = false,
                noice = true,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
                -- Additional plugin integrations can be added here

            },
        }) -- Apply the setup
        vim.cmd.colorscheme("catppuccin") -- Set the colorscheme
    end,
}

