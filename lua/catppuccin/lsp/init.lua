local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("catppuccin.lsp.lsp-installer")
require("catppuccin.lsp.handlers").setup()
