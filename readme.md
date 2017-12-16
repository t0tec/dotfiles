t0tec does dotfiles thanks to [Zach Holman](https://github.com/holman)

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

## install

Run this:

``sh
git clone https://github.com/t0tec/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
# setup vim plugins/tweaks/ui
sh script/vim.sh 
``

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.


## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.


## components


- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
    but still keep those autoloaded files in your home directory. These get
      symlinked in when you run `script/bootstrap`.

## thanks
- Thanks to [Zach Holman's dotfiles](https://github.com/holman/dotfiles) I have
  a solution to backup and organise my dotfiles with ease!
- Thanks to [btfonaine's dotfiles](https://github.com/bfontaine/Dotfiles) for
  his `vim.sh` script

