# danpker's dotfiles

## Requirements

### Font

Fira Code is needed as the font for alacritty, otherwise it should fall back to
Menlo.

### Stow

Stow makes setting things up really easy

## Install

`git clone` anywhere and then use the GNU software `stow` to activate config
files for certain applications.

E.g. `cd ~/dotfiles; stow vim`

If `stow` isn't available, you can just use a normal symlink.

## Further install

### Vim

Vim uses `vim-plug` to manage packages so you will have to run `:PlugInstall`
after starting Vim to get all of the right stuff. Might also be worth running
`:PlugUpgrade` to update `vim-plug` itself.

### Tmux

Tmux uses `tpm` to manage extra packages. Running `c-a I` will install these.
`c-a U` will update stuff as well.
