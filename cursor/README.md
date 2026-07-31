# Cursor configs

Cursor has no marketplace protocol — rules and MCP configs are just files. Install by symlinking (via `../scripts/install.sh`) or copying manually.

## Layout

- `rules/` — project/user rule files (`.mdc`), copied or symlinked into `~/.cursor/rules/`
- `mcp/mcp.json` — MCP server entries to merge into Cursor's MCP config (`~/.cursor/mcp.json`)

## Manual install

```bash
ln -s "$(pwd)/rules" ~/.cursor/rules
```

For `mcp/mcp.json`, merge the `mcpServers` entries into your existing `~/.cursor/mcp.json` rather than overwriting it.
