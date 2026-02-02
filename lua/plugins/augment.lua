-- Augment: AI inline code completions
-- Requires Node.js 22+ and account at augmentcode.com
-- Tab to accept completions
return {
  "augmentcode/augment.vim",
  event = "InsertEnter",
  cmd = "Augment",
}
