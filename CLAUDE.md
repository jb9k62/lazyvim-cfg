# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim), a Neovim setup powered by lazy.nvim for efficient plugin management. LazyVim provides a solid base configuration with sensible defaults that can be extended through custom plugins and configuration files.

**Documentation:** https://www.lazyvim.org/

## Architecture

### Initialization Flow

1. `init.lua` - Entry point that bootstraps the configuration by requiring `config.lazy`
2. `lua/config/lazy.lua` - Sets up lazy.nvim plugin manager and loads:
   - Core LazyVim plugins via `import = "lazyvim.plugins"`
   - Custom plugins from `lua/plugins/` directory
3. Configuration files in `lua/config/` are automatically loaded by LazyVim:
   - `options.lua` - Vim options (loaded before lazy.nvim)
   - `keymaps.lua` - Custom keybindings (loaded on VeryLazy event)
   - `autocmds.lua` - Autocommands (loaded on VeryLazy event)

### Plugin System

Plugins are defined in Lua tables under `lua/plugins/`. Each file returns a table (or array of tables) with plugin specifications. LazyVim automatically loads all files in this directory.

**Plugin configuration patterns:**
- Add new plugins: `{ "author/plugin-name" }`
- Disable plugins: `{ "plugin-name", enabled = false }`
- Override LazyVim defaults: Return a spec with the same plugin name and new `opts`
- Extend configurations: Use `opts` as a function that receives and modifies existing options

**Lazy loading:** By default in this config, custom plugins load at startup (`lazy = false` in lua/config/lazy.lua:27). LazyVim's own plugins are lazy-loaded automatically.

### LazyVim Extras

LazyVim extras are pre-configured plugin bundles for specific languages or features. Currently enabled extras (see `lazyvim.json`):
- `lazyvim.plugins.extras.lang.markdown`

Import additional extras in plugin files: `{ import = "lazyvim.plugins.extras.lang.typescript" }`

## Configuration Files

### lua/config/lazy.lua

Plugin manager configuration including:
- Automatic lazy.nvim installation if missing
- Plugin update checker (enabled, notifications off)
- Default colorscheme fallbacks: tokyonight, habamax
- Disabled runtime plugins for performance: gzip, tarPlugin, tohtml, tutor, zipPlugin

### lua/plugins/

Custom plugin directory. The included `example.lua` is disabled (`if true then return {} end`) but demonstrates plugin configuration patterns.

## Code Formatting

This configuration uses StyLua for Lua code formatting with the following settings (stylua.toml):
- Indent: 2 spaces
- Column width: 120 characters

Format Lua files: `stylua .` (if stylua is installed via Mason or system package manager)

## Development Workflow

### Adding New Plugins

1. Create or edit a file in `lua/plugins/`
2. Return a table with plugin specifications
3. Restart Neovim or run `:Lazy sync` to install

### Modifying LazyVim Defaults

Reference LazyVim's default configurations at:
- Options: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
- Keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
- Autocmds: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

Override defaults by adding configuration to the corresponding file in `lua/config/`.

### Plugin Management Commands

Run these commands inside Neovim:
- `:Lazy` - Open lazy.nvim UI
- `:Lazy sync` - Install missing plugins and update existing ones
- `:Lazy clean` - Remove unused plugins
- `:Lazy update` - Update plugins
- `:Lazy check` - Check for updates

### LSP, Linters, and Formatters

LazyVim integrates with Mason for managing LSP servers, DAP servers, linters, and formatters.

Commands in Neovim:
- `:Mason` - Open Mason UI to install/manage tools
- `:LspInfo` - Show LSP server status
- `:LazyExtras` - Browse and enable LazyVim language extras

## File Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json          # Plugin version lockfile (managed by lazy.nvim)
├── lazyvim.json            # LazyVim state and enabled extras
├── stylua.toml             # Lua formatter configuration
├── lua/
│   ├── config/
│   │   ├── lazy.lua        # Plugin manager setup
│   │   ├── options.lua     # Vim options
│   │   ├── keymaps.lua     # Custom keybindings
│   │   └── autocmds.lua    # Custom autocommands
│   └── plugins/
│       └── *.lua           # Plugin specifications
```
