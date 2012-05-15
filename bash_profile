source ~/.bashrc
source ~/.git-completion.sh

export CC=/usr/bin/gcc-4.2
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function parse_git_branch {
  ref="$(git branch 2> /dev/null | sed -n "/*/ p" | awk '{ print $2 }')"
  if [ -n "$ref" ]; then
    echo ":"${ref#refs/heads/}""
  fi  
}

PS1="\n\[\e[42m\e[30m\]\u\[\e[0m\]\[\e[46m\e[30m\]:\W\[\e[43m\e[30m\]\$(parse_git_branch)\[\e[0m\] \n"
