local cmd
if vim.fn.has("win32") == 1 then
  cmd = { "ncat", "localhost", "6005" }
else
  cmd = vim.lsp.rpc.connect("127.0.0.1", 6005)
end
return {
  {
    "nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {
          name = "godot",
          cmd = cmd,
        },
      },
    },
  },
}
