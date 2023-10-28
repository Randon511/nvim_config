require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
})

vim.cmd.colorscheme "catppuccin"

vim.cmd('highlight LineNr guifg=' .. "#c2a8ff")
