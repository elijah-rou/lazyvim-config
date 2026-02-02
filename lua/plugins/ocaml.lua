-- OCaml configuration
-- Uses ocamllsp installed via opam, not Mason
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ocamllsp = {
          mason = false, -- Don't install via Mason, use opam version
        },
      },
    },
  },
}
