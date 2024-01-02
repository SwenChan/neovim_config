require("neo-tree").setup({
  close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
  popup_border_style = "rounded",
  open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
  window = {
    position = "right",
    mapping_options = {
      noremap = true,
      nowait = true,
    },
  },
  filesystem = {
    filtered_items = {
      always_show = { -- remains visible even if other settings would normally hide it
        ".gitignore",
      },
    },
    use_libuv_file_watcher = true
  },
})
