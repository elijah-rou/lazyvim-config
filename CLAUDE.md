# Neovim Configuration

LazyVim-based Neovim configuration.

## Structure

```
nvim/
├── init.lua              # Entry point (loads lazy config)
├── lazy-lock.json        # Plugin version lock file
├── lazyvim.json          # LazyVim extras configuration
├── lua/
│   ├── config/
│   │   ├── lazy.lua      # Lazy.nvim bootstrap and setup
│   │   └── options.lua   # Global options and keymaps
│   └── plugins/          # Plugin configurations
└── stylua.toml           # Lua formatter config
```

## Key Files

- `lua/config/options.lua` - Leader keys, keymaps, vim options
- `lua/plugins/lspconfig.lua` - LSP configuration
- `lua/plugins/avante.lua` - AI assistant (Claude) config
- `lazyvim.json` - Enabled LazyVim extras (languages, features)

## Leader Keys

- `<Space>` - Leader
- `.` - Local leader

## Adding Language Support

Add extras to `lazyvim.json` under the `extras` array:
```json
"lazyvim.plugins.extras.lang.<language>"
```

Then run `:Lazy sync` and `:Mason` to install servers.

## LSP Troubleshooting

1. `:LspInfo` - Check attached LSP clients
2. `:Mason` - Install/manage language servers
3. `:LazyHealth` - Check LazyVim health
4. `:checkhealth lsp` - Diagnose LSP issues

Common issues:
- Server not installed: Run `:Mason` and install the server
- Server not starting: Check `:LspLog` for errors
- Missing dependencies: Some servers need external tools (node, python, etc.)

## Plugin Management

- `:Lazy` - Open plugin manager
- `:Lazy sync` - Update plugins
- `:Lazy health` - Check plugin health

## AI Integration

Avante (Claude) is configured in `lua/plugins/avante.lua`. Requires `ANTHROPIC_API_KEY` env var.

## Testing

Uses neotest with adapters for: Elixir, Go, Python, Zig.
