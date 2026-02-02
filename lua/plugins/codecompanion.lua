-- CodeCompanion: in-buffer AI chat and transforms
-- Uses OpenAI Codex via ACP
return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = { adapter = "codex" },
      inline = { adapter = "codex" },
    },
    adapters = {
      codex = function()
        return require("codecompanion.adapters").extend("codex", {
          env = {
            api_key = "OPENAI_API_KEY",
          },
        })
      end,
    },
  },
  keys = {
    { "<leader>a", nil, desc = "AI (CodeCompanion)" },
    { "<leader>aa", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle chat" },
    { "<leader>ai", "<cmd>CodeCompanionActions<cr>", desc = "Inline actions" },
    { "<leader>ai", "<cmd>CodeCompanionActions<cr>", mode = "v", desc = "Inline actions" },
    { "<leader>ae", "<cmd>CodeCompanion /explain<cr>", mode = "v", desc = "Explain selection" },
    { "<leader>ar", "<cmd>CodeCompanion /refactor<cr>", mode = "v", desc = "Refactor selection" },
    { "<leader>at", "<cmd>CodeCompanion /tests<cr>", mode = "v", desc = "Generate tests" },
    { "<leader>af", "<cmd>CodeCompanion /fix<cr>", mode = "v", desc = "Fix code" },
  },
  cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions" },
}
