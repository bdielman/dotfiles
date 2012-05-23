# My Dotfiles Setup

## How to setup on a new machine

### Prerequisites

* Git (1.7+)
* Vim (7.3+) - MacVim installed via [Homebrew](http://mxcl.github.com/homebrew/)
* [Kaleidoscope](http://www.kaleidoscopeapp.com/) - Gitconfig points to this app for diffs

### The Setup

#### Create the dotfiles directory

```bash
$ mkdir .dotfiles
$ git clone git@github.com:bdielman/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

#### Register and clone the Vim bundles

```bash
# Register the submodules
$ git submodule init
# Clone the submodules
$ git submodule update
```

#### Add new submodules

```bash
# Add the submodule
$ git submodule add git://example.com/remote/path/to/repo.git vim/bundle/one-submodule
# Stage the changes
$ git add vim/bundle/one-submodule
# Commit the changes
$ git commit -m "Add a new submodule: one-submodule"
```

#### Symlink the new files to HOME

```bash
$ bash symlinkit.sh
```

Running the symlinkit script will delete (if they already exist) and recreate the symlinks in HOME.

#### Update all submodules at once

```bash
# Navigate to your dotfiles directory
$ cd ~/.dotfiles
# Run this one line in bash
$ git submodule foreach git pull origin master
```

## Acknowledgements

I have a few people to thank for help and inspiration in getting this up and running:

* [Nate Klaiber](https://github.com/nateklaiber)
* [Joe Fiorini](https://github.com/joefiorini)
* [Jonathan Penn](https://github.com/jonathanpenn)
* [Nicolas Gallagher](https://github.com/necolas)
