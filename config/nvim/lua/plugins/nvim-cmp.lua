-- override nvim-cmp options to disable completion in comments see https://github.com/hrsh7th/nvim-cmp/wiki/Advanced-techniques#disabling-completion-in-certain-contexts-such-as-comments
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    opts.enabled = function()
      local context = require("cmp.config.context")
      -- keep command mode completion enabled when cursor is in a comment
      if vim.api.nvim_get_mode().mode == "c" then
        return true
      else
        if context.in_treesitter_capture("comment") or context.in_syntax_group("Comment") then
          return false
        else
          return true
        end
      end
    end
  end,
}
