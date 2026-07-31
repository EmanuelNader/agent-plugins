# OpenCode configs

OpenCode also has no marketplace protocol — agent/config files are installed by copying or symlinking into OpenCode's config directory.

## Layout

- `agents/` — agent definition files

## Manual install

Confirm OpenCode's config path on your machine (commonly `~/.config/opencode/`), then:

```bash
ln -s "$(pwd)/agents" ~/.config/opencode/agents
```
