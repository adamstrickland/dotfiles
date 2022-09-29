-- local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
-- parser_configs.hcl = {
--   filetype = "hcl", "terraform",
-- }
return {
  ensure_installed = {
    "bash",
    "comment",
    "dockerfile",
    "go",
    "html",
    "http",
    "javascript",
    "json",
    "latex",
    "lua",
    "make",
    "markdown",
    "python",
    "regex",
    "ruby",
    "rust",
    "scss",
    -- "terraform",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
  matchup = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ax"] = "@class.outer",
        ["ix"] = "@class.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]x"] = "@class.outer",
      },
      goto_next_end = {
        ["]F"] = "@function.outer",
        ["]X"] = "@class.outer",
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[x"] = "@class.outer",
      },
      goto_previous_end = {
        ["[F"] = "@function.outer",
        ["[X"] = "@class.outer",
      },
    },
    swap = {
      enable = false,
    },
  },
}
