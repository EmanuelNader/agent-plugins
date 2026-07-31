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

## Configured servers

- **context7** — replace `YOUR_CONTEXT7_API_KEY` with a real key (`npx ctx7 setup --cursor` can do this for you)
- **github** — replace `YOUR_GITHUB_TOKEN` with a GitHub PAT, or swap to the OAuth-based `https://api.githubcopilot.com/mcp/` remote endpoint instead of Docker
- **figma** — replace `YOUR_FIGMA_API_KEY` with a Figma personal access token
- **headroom** — no API key needed; requires `pip install "headroom-ai[mcp]"` first so the `headroom` command is on PATH. For Claude Code specifically, prefer `headroom mcp install` instead (auto-registers, no manual JSON needed)
