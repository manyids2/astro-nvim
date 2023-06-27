return {
  "https://github.com/svermeulen/vim-subversive",
  config = function()
    -- s is always used, so use c instead
    vim.cmd [[nmap m <plug>(SubversiveSubstitute)]]
    vim.cmd [[nmap mm <plug>(SubversiveSubstituteLine)]]

    vim.cmd [[nmap <leader>m <plug>(SubversiveSubstituteRange)]]
    vim.cmd [[xmap <leader>m <plug>(SubversiveSubstituteRange)]]
    vim.cmd [[nmap <leader>mm <plug>(SubversiveSubstituteWordRange)]]
    vim.cmd [[onoremap ie :exec "normal! ggVG"<cr>]]
    vim.cmd [[onoremap iv :exec "normal! HVL"<cr>]]
  end,
  lazy = false,
}
