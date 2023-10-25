-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- buffer nav
    ["H"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["L"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },

    -- Alt commands
    ["<M-e>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    ["<M-f>"] = { "<cmd>ZenMode<cr>", desc = "Zen mode" },
    ["<M-o>"] = { "<cmd>OverseerToggle<cr>", desc = "Toggle Overseer" },
    ["<M-g>"] = { "<cmd>ARsyncUpDelete<cr>", desc = "Rsync up" },
    ["<M-G>"] = { "<cmd>ARsyncDown<cr>", desc = "Rsync down" },
    ["<M-t>"] = { "<cmd>TodoTrouble<cr>", desc = "Todos" },
    ["<M-r>"] = { "<cmd>source .git/.nvim.lua<cr>", desc = "Load local nvim config" },
    ["<C-e>"] = { "<cmd>lua vim.lsp.buf.format()<cr>", desc = "Format buffer" },
    ["<C-z>"] = { "<cmd>bd<cr>", desc = "Delete buffer" },
    ["<leader>c"] = false,

    -- which-key groups
    ["<leader>x"] = { name = " Trouble" },
    ["<leader>r"] = { name = " Neotest" },
    ["<leader>G"] = { name = " Rsync" },
    ["<leader>v"] = { name = " Virtualenv" },
    ["<leader>D"] = { name = " Dadbod" },

    -- specific keys
  },
  t = {
    -- setting a mapping to false will disable it
    ["<esc>"] = false,
  },
}
