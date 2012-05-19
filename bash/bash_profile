source ~/.bashrc
source ~/.git-completion.sh

export CC=/usr/bin/gcc-4.2
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Adapted from: https://github.com/necolas/dotfiles/
function prompt_git() {
    local status output flags
    status="$(git status 2>/dev/null)"
    [[ $? != 0 ]] && return;
    output="$(echo "$status" | awk '/# Initial commit/ {print "(init)"}')"
    [[ "$output" ]] || output="$(echo "$status" | awk '/# On branch/ {print $4}')"
    [[ "$output" ]] || output="$(git branch | perl -ne '/^\* (.*)/ && print $1')"
    flags="$(
    echo "$status" | awk 'BEGIN {r=""} \
        /^# Changes to be committed:$/        {r=r "+"}\
        /^# Changes not staged for commit:$/  {r=r "!"}\
        /^# Untracked files:$/                {r=r "?"}\
        END {print r}'
    )"
    if [[ "$flags" ]]; then
        output="$output[$flags]"
    fi
    echo -ne ":${output}"
}

PS1="\n\[\e[42m\e[30m\]\u\[\e[0m\]\[\e[46m\e[30m\]:\W\[\e[43m\e[30m\]\$(prompt_git)\[\e[0m\] "
