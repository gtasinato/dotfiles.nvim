return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
     --global vimtex settings
    vim.g.vimtex_imaps_enabled = 0 --i.e., disable them
    --vimtex_view_settings
    -- 
    -- vim.g.vimtex_compiler_method = 'latexrun'
    vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

  end,
}
