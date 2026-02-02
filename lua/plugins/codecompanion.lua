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
    { "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle chat" },
    { "<leader>ci", "<cmd>CodeCompanionActions<cr>", desc = "Inline actions" },
    { "<leader>ci", "<cmd>CodeCompanionActions<cr>", mode = "v", desc = "Inline actions" },
    { "<leader>ce", "<cmd>CodeCompanion /explain<cr>", mode = "v", desc = "Explain selection" },
    { "<leader>cr", "<cmd>CodeCompanion /refactor<cr>", mode = "v", desc = "Refactor selection" },
    { "<leader>ct", "<cmd>CodeCompanion /tests<cr>", mode = "v", desc = "Generate tests" },
    { "<leader>cf", "<cmd>CodeCompanion /fix<cr>", mode = "v", desc = "Fix code" },
  },
  cmd = { "CodeCompanion", "CodeCompanionChat", "CodeCompanionActions" },
}
