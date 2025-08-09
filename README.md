# Dotfiles

This repository contains my personal dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/). It includes configuration for Zsh, tmux, Neovim, bat, wezterm, ghostty, and more.

## Structure

- Top-level dotfiles (e.g., `.zshrc`, `.tmux.conf`, `.p10k.zsh`, etc.)
- `.zsh/` — Modular Zsh configuration (aliases, functions, plugins, etc.)
- `.config/` — Application configs:
  - `nvim/` — Neovim configuration (with plugins and Lua setup)
  - `wezterm/` — wezterm terminal config
  - `ghostty/` — ghostty terminal config
  - `bat/` — Syntax highlighting themes for bat
  - `aerospace/` — AeroSpace window manager config

## Installation

1. **Clone the repo:**
   ```sh
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Install GNU Stow** (if not already installed):
   ```sh
   brew install stow   # macOS
   # or
   sudo apt install stow  # Debian/Ubuntu
   ```

3. **Stow the dotfiles:**
   ```sh
   stow .
   ```
   This will symlink the configuration files into your home directory.

## Notes

- **Neovim**: Uses [LazyVim](https://www.lazyvim.org/) and Lua-based configuration.
- **Zsh**: Uses [Powerlevel10k](https://github.com/romkatv/powerlevel10k) for prompt, with modular config in `.zsh/`.
- **tmux**: Includes custom keybindings and plugin manager (TPM).
- **bat**: Includes custom Catppuccin Mocha theme.
- **AeroSpace**: Configured for macOS tiling window management.

## Customization

Feel free to fork and adapt these dotfiles to your own workflow. Each config file is commented for clarity.

## License

See individual files for license information where applicable.

---

**Tip:** After updating configs, re-run `stow .` to update symlinks.
