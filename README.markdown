# My Dotfiles Setup

## How to setup on a new machine

### Prerequisites

* Git (2.0+)
* Vim (8.0+) - MacVim installed via [Homebrew](https://brew.sh)
* [Kaleidoscope](https://www.kaleidoscopeapp.com) - Gitconfig points to this app for diffs

### The Setup

#### Create the dotfiles directory

```bash
$ mkdir .dotfiles
$ git clone git@github.com:bdielman/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

#### Install minpac and setup vim plugins

```bash
# Create directory and install minpac
$ mkdir -p vim/pack/minpac/opt/
$ git clone https://github.com/k-takata/minpac.git vim/pack/minpac/opt/minpac

# Install/update plugins (while in Vim)
:PackUpdate
```

#### Add new plugins

```bash
# Add the plugin to packages.vim file
call minpac#add('[github_user_name]/[github_repo_name]')

# Intall/update plugins (while in Vim)
:PackUpdate
```

#### Remove plugins

```bash
# Delete the line for the plugin from packages.vim file
# Run minpac clean (while in Vim)
:PackClean
```

#### Symlink the new files to HOME

```bash
$ bash symlinkit.sh
```

Running the symlinkit script will delete (if they already exist) and recreate the symlinks in HOME.

## Acknowledgements

I have a few people to thank for help and inspiration in getting this up and running:

* [Nate Klaiber](https://github.com/nateklaiber)
* [Joe Fiorini](https://github.com/joefiorini)
* [Jonathan Penn](https://github.com/jonathanpenn)
* [Nicolas Gallagher](https://github.com/necolas)
