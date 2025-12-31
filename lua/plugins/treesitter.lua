return {
  "nvim-treesitter/nvim-treesitter",
  tag = "v0.10.0",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return
    end
    configs.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "python",
        "html",
        "css",
        "json",
        "markdown",
        "bash",
        "go",
        "clojure",
        "java",
        "make",
        "just",
        "yaml",
        "dockerfile"
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
