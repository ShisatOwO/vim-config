function validate(module)
  local ok, _ = pcall(require, module)
  if not ok then
    print("Failed to load " .. module)
  end
  return ok
end

validate("catppuccin.plugins")
validate("catppuccin.options")
validate("catppuccin.colors")
validate("catppuccin.tabs")
validate("catppuccin.toggleterm")
validate("catppuccin.treesitter")
validate("catppuccin.lsp")
validate("catppuccin.completion")
validate("catppuccin.autopair")
validate("catppuccin.sidebar")
validate("catppuccin.shortcuts")
