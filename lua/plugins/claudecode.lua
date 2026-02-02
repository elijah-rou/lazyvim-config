-- Claude Code integration via WebSocket bridge
-- Uses your Claude Max subscription through Claude Code CLI
return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  config = true,
  keys = {
    { "<leader>c", nil, desc = "Claude Code" },
    { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>cf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<leader>cr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
    { "<leader>cC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
    { "<leader>cb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>cs", "<cmd>ClaudeCodeSend<cr>", mode = { "n", "v" }, desc = "Send to Claude" },
    {
      "<leader>cs",
      "<cmd>ClaudeCodeTreeAdd<cr>",
      desc = "Add file",
      ft = { "NvimTree", "neo-tree", "oil" },
    },
  },
}
