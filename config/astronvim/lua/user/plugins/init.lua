return {
  { "christoomey/vim-tmux-navigator" },
  -- { "GitHub/copilot.vim" },
  -- {
  --   "EdenEast/nightfox.nvim",
  --   config = function()
  --     require("user.plugins.nightfox")
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "day",
        dim_inactive = true,
      })
    end,
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gitdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit",
    },
    ft = { "fugitive" },
  },
  { "tpope/vim-git" },
  { "tpope/vim-repeat" },
  { "tpope/vim-surround" },
  { "vim-scripts/bufexplorer.zip" },
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = os.getenv("HOME") .. "/.local/share/nvim/site/pack/packer",
          copilot_node_command = os.getenv("HOME") .. "/.asdf/shims/node",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("copilot_cmp").setup()
      astronvim.add_user_cmp_source("copilot")
    end,
  },
}
