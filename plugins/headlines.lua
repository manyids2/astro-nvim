return {
  "lukas-reineke/headlines.nvim",
  ft = { "md", "markdown" },
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    vim.cmd [[highlight Headline1 guibg=#1e2718]]
    vim.cmd [[highlight Headline2 guibg=#21262d]]
    vim.cmd [[highlight CodeBlock guibg=#1c1c1c]]
    vim.cmd [[highlight Dash guibg=#D19A66 gui=bold]]
    require("headlines").setup {
      markdown = {
        query = vim.treesitter.query.parse(
          "markdown",
          [[
                (atx_heading [
                    (atx_h1_marker)
                    (atx_h2_marker)
                    (atx_h3_marker)
                    (atx_h4_marker)
                    (atx_h5_marker)
                    (atx_h6_marker)
                ] @headline)

                (thematic_break) @dash

                (fenced_code_block) @codeblock

                (block_quote_marker) @quote
                (block_quote (paragraph (inline (block_continuation) @quote)))
                (block_quote (paragraph (block_continuation) @quote))
                (block_quote (block_continuation) @quote)
            ]]
        ),
        headline_highlights = { "Headline" },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        dash_string = "-",
        quote_highlight = "Quote",
        quote_string = "┃",
        fat_headlines = true,
        fat_headline_upper_string = "▃",
        fat_headline_lower_string = "🬂",
      },
    }
  end, -- or `opts = {}`
}
