# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository managed with GNU Stow. Each top-level directory represents a "stow package" that can be symlinked to the home directory.

## Key Commands

### Stow Operations
- Install a package: `stow <package-name>` (e.g., `stow nvim`)
- Remove a package: `stow -D <package-name>`
- Reinstall a package: `stow -R <package-name>`
- Dry run: `stow -n <package-name>` (preview changes)
- Handle conflicts: `stow --adopt <package-name>` (adopt existing files)

### Neovim Development
- Check health: `:checkhealth` in Neovim
- Update plugins: `:Lazy update`
- Clean unused plugins: `:Lazy clean`
- Profile startup: `:Lazy profile`

## Architecture

### Directory Structure
Each package follows GNU Stow conventions:
- `<package>/.config/<app>/` for XDG-compliant apps
- `<package>/.zshrc` becomes `~/.zshrc` when stowed
- Nested directories mirror exact home directory structure

### Current Packages
- `ghostty/` - Ghostty terminal config (Catppuccin-mocha theme)
- `nvim/` - Neovim with LazyVim framework
- `p10k/` - Powerlevel10k zsh theme
- `wezterm/` - WezTerm terminal config
- `zellij/` - Zellij terminal multiplexer
- `zsh/` - Zsh configuration with Cursor-specific minimal config

### Important Conventions
1. **Performance**: The `.zshrc` loads a minimal config for Cursor to prevent hanging
2. **Neovim**: Based on LazyVim, uses Lua configs with 2-space indentation
3. **Themes**: Tokyo Night and Catppuccin themes used consistently
4. **Dependencies**: Managed via Homebrew (powerlevel10k, zsh plugins, mise, etc.)

### Key Files
- `zsh/.zshrc` - Main shell config with Cursor detection
- `zsh/.zshrc.cursor` - Minimal config for Cursor terminal
- `nvim/.config/nvim/lua/plugins/` - LazyVim plugin configurations
- `.cursor/rules/` - Detailed development guidelines for this repo

## Development Notes
- Never commit sensitive data (API keys, tokens)
- Use `stow --adopt` carefully as it modifies the repository
- Test stow operations with `-n` flag first
- The repository uses modern CLI replacements: eza (ls), zoxide (cd), fzf