return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- languages
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- appearance
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },

  -- ide
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
}
