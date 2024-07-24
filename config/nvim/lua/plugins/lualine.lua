return {
  -- Make the path in lualine not truncate
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, 3, LazyVim.lualine.pretty_path({ length = 0 }))
    end,
  },
}
