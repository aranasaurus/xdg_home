return {
  "saghun/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<C-space>"] = { "show", "hide" },
    },
    completion = {
      ghost_text = {
        enabled = true,
        show_without_menu = false,
      },
      list = {
        selection = {
          preselect = false,
        },
      },
      menu = {
        auto_show = false,
      },
      trigger = {
        show_on_blocked_trigger_characters = function(ctx)
          if vim.bo.filetype == "markdown" then
            return { " ", "\n", "\t", ".", "/", "(", "[" }
          end
          return { " ", "\n", "\t" }
        end,
      },
    },
  },
}
