return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  opts = {
    provider = "claude",
    auto_suggestions_provider = "claude",
    providers = {
      claude = {
        endpoint = "https://api.anthropic.com",
        api_key_name = "ANTHROPIC_API_KEY",
        model = "claude-sonnet-4-20250514",
        timeout = 15000,
        extra_request_body = {
            temperature = 0.75,
            max_tokens = 20480,
        },
        disable_tools = false
      }
    },
    behaviour = {
      support_paste_from_clipboard = true,
      enable_claude_text_editor_tool_mode = true,
    },
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "echasnovski/mini.icons",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
