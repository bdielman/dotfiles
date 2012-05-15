# My Dotfiles Setup

Initial effort to version control these files. Next steps:

* Break out `bash_profile` and `bashrc` into smaller chunks for environment and aliases
* Move `.vim` folder into dotfiles and setup vim bundles as git submodules

## How to setup on a new machine

### Prerequisites

* Git (1.7+)
* Vim (7.3+) - MacVim installed via [Homebrew](http://mxcl.github.com/homebrew/)
* [Kaleidoscope](http://www.kaleidoscopeapp.com/) - Gitconfig points to this app for diffs

```
git clone git@github.com:bdielman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bash bootstrap.sh
```

Running the bootstrap script will delete and recreate the symlinks in HOME.
