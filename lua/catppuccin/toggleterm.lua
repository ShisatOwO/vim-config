local ok, tterm = pcall(require, "toggleterm")
if not ok then
  return
end

tterm.setup {
  open_mapping = [[<c-t>]], 
  close_on_exit = false,
  direction = "float",
  start_in_insert = true,
  hide_numbers = true,
  float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
}
