# dotfiles

These are my dotfiles.

What used to be a fork of [holman/dotfiles](https://github.com/holman/dotfiles) has now become a standalone set, rebuilt from scratch.

## what do we have here?

Lots of stuff, but the core is zsh, vim, and tmux.

## how does it work?

Inspired by Zach Holman's structure, my dotfiles are organized by "topics". Each topic is a folder, and a topic is usually a piece of software. Within each folder are files related to the topic, which often include:

- `install.sh`
- `link.sh`
- `*.symlink`
- `*.zsh`

`script/install` does the majority of the work, first installing Homebrew (if needed), then finding all of the various `install.sh` scripts and running them.

`script/link` first symlinks the dotfiles folder to `~/.dotfiles`. Then it finds all of the `*.symlink` files and symlinks them to the home directory, renaming each to remove `.symlink` and place a dot in front. Lastly, it finds all of the various `link.sh` scripts and runs them.

`zsh/zshrc.symlink` handles sourcing the various `*.zsh` files, including aliases and completions.

## how do I get started?

```
git clone https://github.com/redhotvengeance/dotfiles.git
cd dotfiles
./bootstrap
```

You can clone the repo anywhere you want. The install process will symlink it to `~/.dotfiles` for you.

`./bootstrap` should handle everything, including the installing and the linking. It'll even set defaults for macOS and check for updates in the Mac App Store. It's worthwhile to reboot the machine after bootstrapping so that all of the settings take effect.

## can I help?

I always welcome pull requests and suggestions, but keep in mind that these are _my_ dotfiles. This repo is not setup like Holman's—it is not meant to be forked for your own usage. Forking dotfiles got me started, but I've arrived at the conclusion that dotfiles are better when created from scratch. Borrow, steal, and get inspired by other dotfiles, but make sure you understand each piece that makes _your_ dotfiles, well, _yours_. It’s worth it.

## many thanks

These dotfiles are highly inspired by Zach Holman's, in addition to [Nick Nisi's](https://github.com/nicknisi/dotfiles).