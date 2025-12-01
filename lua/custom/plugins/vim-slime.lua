return {
  {
    "jpalardy/vim-slime",

    -- 🔴 Make sure slime is actually loaded (so slime#send_cell exists)
    lazy = false,

    -- (optional) you *can* keep these keys if you still want the <leader>r… maps
    keys = {
      { "<leader>rC", "<cmd>SlimeConfig<cr>", desc = "Slime: Configure target" },
      {
        "<leader>rr",
        "<Plug>SlimeSendCell<BAR>/^# %%<CR>",
        mode = "n",
        desc = "Slime: Send cell and go to next",
      },
      {
        "<leader>rl",
        "<Plug>SlimeLineSend",
        mode = "n",
        desc = "Slime: Send line",
      },
      {
        "<leader>rs",
        ":<C-u>'<,'>SlimeSend<CR>",
        mode = "v",
        desc = "Slime: Send selection",
      },
    },

    init = function()
      -- use Neovim terminals as the target
      vim.g.slime_target = "neovim"

      -- keep your cell delimiter for non-Quarto stuff
      vim.g.slime_cell_delimiter = "# %%"

      -- nicer multi-line behavior
      -- vim.g.slime_bracketed_paste = 1
      -- vim.g.slime_neovim_ignore_unlisted = 1
    end,
  },
}
