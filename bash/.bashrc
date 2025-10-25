# Ensure mise shims are available for bash shells, including Codex CLI sessions.
if [ -x /opt/homebrew/bin/mise ]; then
  eval "$(/opt/homebrew/bin/mise activate bash)"
fi

# Ensure shims remain early on PATH for non-interactive shells.
if [ -d "$HOME/.local/share/mise/shims" ]; then
  case ":$PATH:" in
    *":$HOME/.local/share/mise/shims:"*) ;;
    *) export PATH="$HOME/.local/share/mise/shims:$PATH" ;;
  esac
fi

# Load aftman toolchain environment if present.
if [ -f "$HOME/.aftman/env" ]; then
  . "$HOME/.aftman/env"
fi
