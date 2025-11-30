return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,  -- Load immediately
  config = function()
    require("nvim-tree").setup()
  end,
}
