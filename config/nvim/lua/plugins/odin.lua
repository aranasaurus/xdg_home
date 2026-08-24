return {
  -- syntax hilighting
  { "Tetralux/odin.vim" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ols = {
          mason = false,
          cmd = { "/opt/homebrew/bin/ols" },
          settings = {
            odin_command = "$HOME/src/odin-lang/Odin/odin",
          },
        },
      },
    },
  },
}
