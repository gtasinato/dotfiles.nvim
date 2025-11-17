return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- Options: "latte", "macchiato", "frappe", "mocha"
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}
