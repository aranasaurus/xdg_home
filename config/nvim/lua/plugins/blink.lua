return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-space>"] = { "show", "hide" },
    },
    completion = {
      ghost_text = {
        enabled = true,
        show_without_menu = true,
      },
      keyword = {
        range = "full",
      },
      list = {
        selection = {
          preselect = true,
          auto_insert = true,
        },
      },
      menu = {
        auto_show = false,
      },
      trigger = {
        show_on_trigger_character = true,
        show_on_keyword = false,
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
