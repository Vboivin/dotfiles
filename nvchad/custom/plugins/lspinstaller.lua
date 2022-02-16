local lsp_installer = require "nvim-lsp-installer"
local servers = {
  "cssls",
  "dockerls",
  "clangd",
  "html",
  "bashls",
  "pyright",
  "tflint",
  "tsserver",
  "jsonls",
  "jsonnet_ls",
  "solargraph",
  "pyright",
  "yamlls",
}

for _, name in ipairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end
