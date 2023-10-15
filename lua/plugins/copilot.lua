return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_filetypes = {
      ["*"] = false,
      ["javascript"] = true,
      ["typescript"] = true,
      ["lua"] = true,
      ["rust"] = true,
      ["c"] = true,
      ["c#"] = true,
      ["c++"] = true,
      ["go"] = true,
      ["python"] = true,
    }
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-m>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-j>", "copilot#Previous()", { silent = true, expr = true })
    vim.api.nvim_set_keymap("i", "<C-k>", "copilot#Next()", { silent = true, expr = true })
  end,
}
