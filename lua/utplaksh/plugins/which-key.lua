return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  inti = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 600
  end,
  opts = {

  }
}
