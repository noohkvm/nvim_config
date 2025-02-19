return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
        renderer = {
          root_folder_label = function(path)
                    return " " .. vim.fn.fnamemodify(path,":t")
          end
        },
        actions = {
            change_dir = {
            enable = false,
            restrict_above_cwd = true,
            }
        }
    }
  end,
}
