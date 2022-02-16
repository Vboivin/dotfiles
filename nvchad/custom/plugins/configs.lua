local M = {}

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
      "python",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

return M
