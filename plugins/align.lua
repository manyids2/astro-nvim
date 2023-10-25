return {
  "junegunn/vim-easy-align",
  cmds = { "EasyAlign" },
  config = function()
    vim.cmd [[
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)

    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
    ]]
  end,
  lazy = false,
}
