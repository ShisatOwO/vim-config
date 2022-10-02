local ok, tabs = pcall(require, "bufferline")
if not ok then
  return
end

tabs.setup {
  animation = true,
  auto_hide = true,
  tabpages = false,
  closeable = true,
  clickable = true,
  icons = true,
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
  maximum_padding = 1,
  minimum_padding = 1,

  maximum_length = 30,
  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = "Scratch",
}
