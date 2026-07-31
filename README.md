# agent-plugins

My favorite plugins, rules, and agent configs for Claude Code, Cursor, and OpenCode — one repo, one place to keep them in sync.

There's no single marketplace protocol shared across these tools, so each gets the install method it actually supports:

| Tool | Install method |
|---|---|
| [Claude Code](claude-code/) | Real, installable marketplace: `/plugin marketplace add emanuelnader/agent-plugins` then `/plugin install <name>` |
| [Cursor](cursor/) | No marketplace protocol — symlink/copy via `scripts/install.sh` or manually |
| [OpenCode](opencode/) | Same as Cursor — files only, symlinked in |

## Layout

```
claude-code/   Claude Code plugin marketplace (marketplace.json + plugins/)
cursor/        Cursor rules and MCP config snippets
opencode/      OpenCode agent configs
scripts/       install.sh — symlinks cursor/ and opencode/ content into place
```

## Quick start

```bash
# Claude Code
/plugin marketplace add emanuelnader/agent-plugins
/plugin install example-plugin

# Cursor + OpenCode
./scripts/install.sh
```

`claude-code/plugins/example-plugin` is a placeholder showing the expected layout — replace it with real plugins as you add them.
