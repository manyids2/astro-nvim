return {
  {
    "michaelb/sniprun",
    keys = {},
    opts = {
      interpreter_options = {
        Python3_original = {
          interpreter = "python",
          venv = { "./.venv" },
        },
      },
    },
    build = "bash ./install.sh 1",
    cmd = "SnipRun",
  },
}
