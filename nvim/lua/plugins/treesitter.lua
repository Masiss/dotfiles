return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "query",
      "regex",
      "typescript",
      "vim",
      "yaml",
      "rust",
      "yuck",
    },
    highlight = {
    	enable=true,
   additional_vim_regex_highlighting = { "markdown" },
    }
  },
}
