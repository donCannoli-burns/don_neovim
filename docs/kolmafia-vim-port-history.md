# KoLmafia ASH: Vim → Neovim historical provenance

## Origins and credit

- **Original Vim plugin:** [quisquous/vim-kolmafia](https://github.com/quisquous/vim-kolmafia), with history dating to March 2011. Original HEAD examined: `2d3112cb972544fb751b90a71c0d70adc8e2dd48`.
- **Later maintenance and updated ASH functions:** [C2Talon/vim-kolmafia](https://github.com/C2Talon/vim-kolmafia). HEAD examined: `c24b4927ac4b2a52247e8d87abfd7fa8951e5edd` (October 10, 2026). It is 23 commits ahead of the original, with changes to `syntax/ash.vim`.
- **Neovim source:** [neovim/neovim](https://github.com/neovim/neovim). This work is based on the [donCannoli-burns/don_neovim](https://github.com/donCannoli-burns/don_neovim) fork.
- **Original Vim installation reference:** [Pathogen and Git submodules video](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/).
- **Related but separate discussion:** [Neovim #38033](https://github.com/neovim/neovim/discussions/38033), regarding a possible browser/WASM build of Neovim; this is not the source of the ASH plugin.

Credit belongs to the original authors and the maintainers of the referenced
repositories. This experimental Neovim compatibility work is not presented as
an official release or endorsement from any of those projects.

## Branch model

- `master` — existing Neovim source fork (unchanged by this preparation).
- `archive/neovim-pre-kolmafia-port-20261030` — frozen pointer to the fork's
  pre-port commit; **not a copy of the third-party plugins**.
- `port/kolmafia-ash-neovim` — experimental Neovim compatibility package,
  this provenance note and README credit.

The historical Git repositories are cloned separately under
`~/repos/kolmafia-vim-sources/` so their own full history is inspectable.
The referenced HEAD SHAs above identify the examined versions; future changes
may require a fresh comparison.

## Licensing and reuse policy

At review time, neither `quisquous/vim-kolmafia` nor
`C2Talon/vim-kolmafia` had a top-level `LICENSE` file or an explicit license
statement in its short README/syntax header. Public GitHub availability does
**not** automatically grant permission to relicense or redistribute code in
another repository. For now, this branch contains independently written code
and links to historical sources, not copied syntax or plugin source.

Before importing `syntax/ash.vim` or preserving an independent Git branch
containing the original upstream code in this repo, confirm an applicable
license or obtain the relevant authors' permission and document it here.

## Future work

1. Compare the two `syntax/ash.vim` files and distinguish historical keywords
   from current KoLmafia `ashref` output.
2. Seek license/permission clarification before copying third-party code.
3. Extend highlighting for ASH constants, backtick interpolation and native
   functions; add regression tests against representative `.ash` examples.
4. Keep runtime support in a standalone plugin directory to avoid modifying
   Neovim core for a language-specific feature.
