# My Dotfiles Setup

Initial effort to version control these files. Next steps:

* Break out `bash_profile` and `bashrc` into smaller chunks for environment and aliases
* Move `.vim` folder into dotfiles and setup vim bundles as git submodules

## How to setup on a new machine

### Prerequisites

* Git (1.7+)
* Vim (7.3+) - MacVim installed via [Homebrew](http://mxcl.github.com/homebrew/)
* [Kaleidoscope](http://www.kaleidoscopeapp.com/) - Gitconfig points to this app for diffs

### The Setup

```
git clone git@github.com:bdielman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bash symlinkit.sh
```
Running the symlinkit script will delete and recreate the symlinks in HOME.

## Acknowledgements

I have a few people to thank for help and inspiration in getting this up and running:

* [Nate Klaiber](https://github.com/nateklaiber)
* [Joe Fiorini](https://github.com/joefiorini)
* [Jonathan Penn](https://github.com/jonathanpenn)
* [Nicolas Gallagher](https://github.com/necolas)
