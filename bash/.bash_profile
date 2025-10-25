# Login shells load ~/.bashrc for shared setup (Codex CLI uses bash -lc).
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
