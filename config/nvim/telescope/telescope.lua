local actions = require "telescope.actions"

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.select_default,
        ["<C-o>"] = actions.select_default,
      },
      n = {
        ["q"] = actions.close,
        ["o"] = actions.select_default,
        ["<C-j>"] = actions.select_default,
      }
    },
  path_display={"truncate"}
  },
}
