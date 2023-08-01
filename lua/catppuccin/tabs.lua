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
  icons = {filetype={enabled=true}},
  icons.separator.left = '▎',
  icons.inactive.separator.left = '▎',
  icons.button = '',
  icons.modified.button = '●',
  icons.pinned.button = '車',
  maximum_padding = 1,
  minimum_padding = 1,

  maximum_length = 30,
  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = "Scratch",
}
