return {
  n = {
    ["<leader>"] = {
      b = {
        b = { "<cmd>BufExplorer<CR>", "BufExplorer"},
      },
      N = {
        name = "Neovim",
        c = { "<cmd>edit " .. os.getenv("HOME") .. "/.config/astronvim<CR>", "Edit config" },
        r = { "<cmd>source $MYVIMRC<CR>", "Reload config" },
      },
      n = {
        name = "NeoTree",
        f = { "<cmd>Neotree float reveal_file=<cfile> reveal_force_cwd<CR>", "Find File" },
        g = { "<cmd>Neotree<CR>", "Focus" },
        n = { "<cmd>Neotree toggle current reveal_force_cwd<CR>", "Toggle" },
        -- r = { "<cmd>NeotreeResize " .. 31 .. "<CR>", "Reset" },
        s = { "<cmd>Neotree float git_status<CR>", "Git Status" },
      },
    },
  },
}
