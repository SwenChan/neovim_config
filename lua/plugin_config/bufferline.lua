require("bufferline").setup({
  options = {
    offsets = { {
      filetype = "coc-explorer",
    } },
    show_buffer_close_icons = false,
    show_close_icon = false,

    mode = "buffers",
    numbers = "none",
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    diagnostics = "nvim_lsp",
    color_icons = true,
    show_buffer_icons = true,
    show_tab_indicators = true,
    separator_style = "padded_slant",
    always_show_bufferline = true,
    enforce_regular_tabs = true,
  },
})
