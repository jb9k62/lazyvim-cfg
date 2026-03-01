# gitsigns.nvim

Plugin: [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

Shows git change indicators in the sign column and provides hunk-level git operations without leaving Neovim.

## Diff This (`<leader>ghd`)

Opens a side-by-side diff of the current file:

- **Left** — old version (from git index/HEAD)
- **Right** — your current working buffer

### Exiting

1. Move to the left split: `<C-w>h`
2. Close it: `:q`

Or from either split, close all other windows: `<C-w>o`

## Other Useful Hunk Keymaps

| Keymap        | Action             |
|---------------|--------------------|
| `]h`          | Next hunk          |
| `[h`          | Previous hunk      |
| `<leader>ghs` | Stage hunk         |
| `<leader>ghr` | Reset hunk         |
| `<leader>ghp` | Preview hunk       |
| `<leader>ghD` | Diff this `~` (against last commit) |
