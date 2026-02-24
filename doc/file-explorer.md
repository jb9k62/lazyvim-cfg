# File Explorer (snacks.nvim)

LazyVim uses **snacks.nvim** for the file explorer — it's a tree-view sidebar built on top of the same picker infrastructure as other snacks pickers.

## Enabling It

The explorer is an optional extra. Check if it's active with `:LazyExtras`.
If not enabled, add it to a plugin file:

```lua
-- lua/plugins/explorer.lua
return {
  { import = "lazyvim.plugins.extras.editor.snacks_explorer" },
}
```

Or run `:LazyExtras` inside Neovim and toggle `editor.snacks_explorer` on.

---

## Opening / Closing

| Key          | Action                              |
|--------------|-------------------------------------|
| `<leader>e`  | Open explorer (project root)        |
| `<leader>E`  | Open explorer (current working dir) |
| `<leader>fe` | Same as `<leader>e`                 |
| `<leader>fE` | Same as `<leader>E`                 |
| `q`          | Close the explorer                  |

---

## Navigation

| Key          | Action                              |
|--------------|-------------------------------------|
| `j` / `k`    | Move down / up                      |
| `l` or `<CR>`| Open file or expand directory       |
| `h`          | Collapse directory                  |
| `<BS>`       | Go up to parent directory           |
| `.`          | Set current directory as cwd        |
| `Z`          | Collapse all open directories       |
| `gg` / `G`   | Jump to top / bottom                |
| `<C-d>` / `<C-u>` | Scroll half-page down / up   |

---

## Show Hidden & Ignored Files

| Key | Action                                    |
|-----|-------------------------------------------|
| `H` | Toggle hidden files (dotfiles like `.env`)|
| `I` | Toggle gitignored files                   |

By default both are hidden. Press `H` once to show dotfiles, again to hide them.

---

## Search

| Key          | Action                                          |
|--------------|-------------------------------------------------|
| `/`          | Filter visible items (type to narrow the tree)  |
| `<leader>/`  | Grep (search file contents) in current directory|

`/` is a live filter on what's visible — not a full search. Use `<leader>/` to search inside file contents.

---

## File Operations

| Key | Action                                                         |
|-----|----------------------------------------------------------------|
| `a` | Create file or directory (add `/` at end of name for a dir)   |
| `r` | Rename current file                                            |
| `d` | Delete (moves to system trash by default)                      |
| `y` | Yank (copy) file path to register                              |
| `p` | Paste / copy yanked file to current location                   |
| `c` | Copy file to a new name in same directory                      |
| `m` | Move file (or move selected files to current dir)              |
| `o` | Open with system app (e.g. Finder/xdg-open)                   |
| `u` | Refresh the tree                                               |

### Moving / Copying Multiple Files

1. Press `<Tab>` on each file you want to select
2. Navigate to the destination directory
3. Press `m` to move or `c` to copy all selected files there

---

## Selection

| Key       | Action                              |
|-----------|-------------------------------------|
| `<Tab>`   | Select file, advance to next        |
| `<S-Tab>` | Select file, go to previous         |
| `<C-a>`   | Select all                          |

---

## Opening Files in Splits / Tabs

| Key    | Action                        |
|--------|-------------------------------|
| `<CR>` | Open in current window        |
| `<C-s>`| Open in horizontal split      |
| `<C-v>`| Open in vertical split        |
| `<C-t>`| Open in new tab               |

---

## Preview

| Key | Action           |
|-----|------------------|
| `P` | Toggle preview   |
| `<C-f>` | Scroll preview down |
| `<C-b>` | Scroll preview up   |

---

## Git Integration

Git status icons appear automatically next to files. Directories show an aggregate status of their contents.

| Key  | Action                     |
|------|----------------------------|
| `]g` | Jump to next git change    |
| `[g` | Jump to previous git change|

---

## Diagnostics Integration

LSP diagnostic indicators show inline on files.

| Key  | Action                      |
|------|-----------------------------|
| `]d` | Jump to next diagnostic     |
| `[d` | Jump to previous diagnostic |
| `]e` | Jump to next error          |
| `[e` | Jump to previous error      |
| `]w` | Jump to next warning        |
| `[w` | Jump to previous warning    |

---

## Help

Press `?` inside the explorer to see the full keybinding list.

---

## Tips

- **Follow current file:** The explorer automatically highlights the file you're editing in the tree.
- **Replaces netrw:** Opening a directory (`nvim .`) launches the explorer instead of netrw.
- **Yanked paths persist:** `y`/`p` for file paths works across sessions.
- **Filesystem watching:** The tree updates automatically when files change on disk.
