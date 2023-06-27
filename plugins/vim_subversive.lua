return {
  "https://github.com/svermeulen/vim-subversive",
  config = function()
    -- s is always used, so use c instead
    vim.cmd [[nmap c <plug>(SubversiveSubstitute)]]
    vim.cmd [[nmap cc <plug>(SubversiveSubstituteLine)]]

    vim.cmd [[nmap <leader>c <plug>(SubversiveSubstituteRange)]]
    vim.cmd [[xmap <leader>c <plug>(SubversiveSubstituteRange)]]
    vim.cmd [[nmap <leader>cc <plug>(SubversiveSubstituteWordRange)]]
    vim.cmd [[onoremap ie :exec "normal! ggVG"<cr>]]
    vim.cmd [[onoremap iv :exec "normal! HVL"<cr>]]
  end,
  lazy = false,
}
