return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "latte",
    transparent_background = true,
  },
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
