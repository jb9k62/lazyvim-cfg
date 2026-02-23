-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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
