return {
  "mfussenegger/nvim-dap",
  keys = {
    {
      "<leader>df",
      function()
        local widgets = require "dap.ui.widgets"
        widgets.centered_float(widgets.frames)
      end,
      desc = "Dap open frames",
    },
    {
      "<leader>ds",
      function()
        local widgets = require "dap.ui.widgets"
        widgets.centered_float(widgets.scopes)
      end,
      desc = "Dap open scopes",
    },
    {
      "<leader>dh",
      function()
        local widgets = require "dap.ui.widgets"
        widgets.hover()
      end,
      desc = "Dap hover",
    },
    {
      "<leader>dp",
      function()
        local widgets = require "dap.ui.widgets"
        widgets.preview()
      end,
      desc = "Dap preview",
    },
    {
      "<leader>dl",
      function() require("dap").run_last() end,
      desc = "Dap run last",
    },
    {
      "<leader>dr",
      function() require("dap").repl.open() end,
      desc = "Dap repl open",
    },
    {
      "<leader>ddl",
      function() require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ") end,
      desc = "Dap log msg",
    },
  },
}
