-- Supermaven: fast AI code completions
return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  opts = {
    keymaps = {
      accept_suggestion = "<Tab>",
      clear_suggestion = "<C-]>",
      accept_word = "<C-j>",
    },
    color = {
      suggestion_color = "#838a97", -- Match iroaseta comment color
      cterm = 244,
    },
    log_level = "off",
  },
}
