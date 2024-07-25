-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("No formatoptions overrides, please", { clear = true }),
  callback = function()
    vim.opt.formatoptions = "tcrqnblj"
  end,
})
