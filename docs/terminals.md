# Viewing Open Terminals

LazyVim includes [snacks.nvim](https://github.com/folke/snacks.nvim) by default, which provides a picker UI for navigating buffers — including terminal buffers.

## Why terminals don't appear by default

Terminal buffers are **unlisted** (hidden), so the standard buffer picker (`<leader>fb`) excludes them. You need to pass `hidden = true` to the picker, or use a custom filter.

## Keybindings

| Key | Action |
|-----|--------|
| `<leader>fb` | Buffer picker (files only by default) |
| `<leader>ft` | Open a new floating terminal |
| `<leader>fT` | Open a new terminal in the root directory |

## Fix: Include terminals in the buffer picker

Add to `lua/config/keymaps.lua`:

```lua
-- Override <leader>fb to include terminal (and other unlisted) buffers
vim.keymap.set("n", "<leader>fb", function()
  Snacks.picker.buffers({ hidden = true })
end, { desc = "Buffers (incl. terminals)" })
```

## Terminals-only picker

For a picker that shows **only** terminal buffers, add to `lua/config/keymaps.lua`:

```lua
vim.keymap.set("n", "<leader>f/", function()
  Snacks.picker.buffers({
    hidden = true,
    filter = {
      filter = function(item)
        return vim.bo[item.buf].buftype == "terminal"
      end,
    },
  })
end, { desc = "Terminal Buffers" })
```

Terminal buffers appear in the picker as `> []`.
