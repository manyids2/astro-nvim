return {
  {
    "KenN7/vim-arsync",
    dependencies = {
        {'prabirshrestha/async.vim'}
    },
    cmd = { "ARshowConf", "ARsyncUp", "ARsyncUpDelete", "ARsyncDown" },
    keys = {
      { "<leader>Gg", "<cmd>ARsyncUpDelete<cr>", desc = "ARsyncUpDelete" },
      { "<leader>Ge", "<cmd>edit /home/x/code/rsync/rsync.sh<cr>", desc = "Edit rsync.sh" },
      { "<leader>Gl", "<cmd>!/home/x/code/rsync/rsync.sh<cr>", desc = "Run rsync.sh" },
    },
  },
}
