# Experimental KoLmafia ASH support for Neovim

This is an **independently written starter**, not a completed port of the full historical
function keyword list. It registers `*.ash` as the `ash` filetype and provides
basic ASH syntax highlighting. It does not execute KoLmafia scripts.

## Test

From the root of `don_neovim`, with `nvim` installed:

```sh
nvim --headless -u NONE -i NONE -c 'luafile contrib/kolmafia-ash.nvim/tests/smoke.lua' -c 'qa!'
```

## Local install without rebuilding Neovim

```sh
mkdir -p ~/.local/share/nvim/site/pack/don/start
ln -s "$PWD/contrib/kolmafia-ash.nvim" \
  ~/.local/share/nvim/site/pack/don/start/kolmafia-ash.nvim
```

The plugin directory has its own `plugin/` and `syntax/` subdirectories and can
be moved into any normal Neovim package-manager location. Remove the symlink
to uninstall. This project retains no original or C2Talon source files.

See [historical context](../../docs/kolmafia-vim-port-history.md) for upstream
repositories, credit, branch layout and licensing caveat.
