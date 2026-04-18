# LazyVim Config

This repo is a clean [LazyVim](https://www.lazyvim.org/) setup for a
`React + TypeScript + Laravel` workflow.

## Included workflow extras

- TypeScript
- PHP
- Tailwind CSS
- JSON
- ESLint
- Prettier

## Extra workflow tuning

- `intelephense` as the PHP LSP
- Tailwind LSP enabled for Blade and PHP buffers
- Treesitter parsers for `blade`, `tsx`, `typescript`, `php`, and related web files
- `blade-formatter` wired into Conform for Blade templates

## New machine setup

1. Install Neovim and the usual CLI deps required by LazyVim.
2. Clone this repo to `~/.config/nvim`.
3. Start `nvim`.
4. Run `:LazyHealth` after the first install finishes.

If you want a fully clean migration, also remove or back up old Neovim data dirs:

- `~/.local/share/nvim`
- `~/.local/state/nvim`
- `~/.cache/nvim`
