# Login shells load ~/.bashrc for shared setup (Codex CLI uses bash -lc).
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/mattlins/.lmstudio/bin"
# End of LM Studio CLI section

