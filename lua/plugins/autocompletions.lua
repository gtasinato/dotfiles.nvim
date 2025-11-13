return {
    {
    "micangl/cmp-vimtex",
        ft = "tex",
        config = function()
        require('cmp_vimtex').setup({})
        end,
    },
    {
    'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
-- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
    },
    {
    'saghen/blink.compat',
        version = '*',
        opts = {impersonate_nvim_cmp = false},
    },
    {
    'saghen/blink.cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip', version = 'v2.*' },
            {"micangl/cmp-vimtex"},
        },
        lazy = false, -- lazy loading handled internally
        version = '*',

        opts = {
            -- 'default' for mappings similar to built-in completion
            -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
            -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
            -- see the "default configuration" section below for full documentation on how to define
            -- your own keymap.

            keymap = { preset = 'enter'},
            cmdline = {
              keymap = {
                -- recommended, as the default keymap will only show and select the next item
                ['<Tab>'] = { 'show', 'accept' },
              },
              completion = {
                menu = {
                  auto_show = function(ctx)
                    return vim.fn.getcmdtype() == ':'
                    -- enable for inputs as well, with:
                    -- or vim.fn.getcmdtype() == '@'
                  end,
                },
              }
            },
            snippets = { preset = 'luasnip' },
            sources = {
                default = { 'lsp', 'path','cmdline','snippets', 'buffer','vimtex' },
                providers = {
                    snippets = {
                        score_offset = 1,
                    },
                    vimtex = {
                    name = 'vimtex',
                    module = 'blink.compat.source',
                    score_offset = 3,
                    },
                },
            },
                    -- experimental signature help support
            signature = { enabled = true },
        },
        opts_extend = { "sources.default" },
    },
}
