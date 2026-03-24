return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master", -- <-- This is the magic line that fixes the crash
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      ensure_installed = {
        "javascript", "typescript", "tsx", "html", "css", "json", "prisma",
        "go", "rust", "c", "bash", "dockerfile", "lua", "vim", "vimdoc",
        "query", "markdown", "markdown_inline", "gitignore",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>", -- it ctrl+space
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
    vim.treesitter.language.register("bash", "zsh")
  end,
}
