require("bufferline").setup{
        options = {
                mode = "buffers",
                diagnostics = 'coc',
                offsets = {{
                        filetype = "coc-explorer",
                }},
                show_buffer_icons = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
                show_tab_indicators = true,
                separator_style = "padded_slant",
                always_show_bufferline = false
        }
}
