function validate(module)
  local ok, _ = pcall(require, module)
  if not ok then
    print("Failed to load " + module)
  return ok
end

validate("catppuccin.plugins")
validate("catppuccin.options")
validate("catppuccin.colors")
validate("catppuccin.treesitter")
validate("catppuccin.lsp")
validate("catppuccin.completion")
validate("catppuccin.autopair")
validate("catppuccin.sidebar")
validate("catppuccin.shortcuts")
