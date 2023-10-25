return {
  "nvim-neotest/neotest",
  ft = { "go", "rust", "python" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-go",
    "nvim-neotest/neotest-python",
    "rouge8/neotest-rust",
  },
  keys = {
    {
      "<leader>rr",
      function() require("neotest").run.run() end,
      desc = "Neotest run nearest",
    },
    {
      "<leader>rf",
      function() require("neotest").run.run(vim.fn.expand "%") end,
      desc = "Neotest run this file",
    },
    {
      "<leader>rd",
      function() require("neotest").run.run { vim.fn.expand "%", strategy = "dap" } end,
      desc = "Neotest run this file with dap",
    },
    {
      "<leader>rs",
      function() require("neotest").run.stop() end,
      desc = "Neotest stop",
    },
    {
      "<leader>rt",
      function() require("neotest").output.open { enter = true } end,
      desc = "Neotest open output",
    },
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-python" {
          dap = { justMyCode = false },
          args = { "--capture=no", "-s" },
          runner = "pytest",
        },
      },
    }
  end,
}
