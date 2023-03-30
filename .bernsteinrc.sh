# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias ls='ls -F --color=tty --show-control-chars'
alias ll='ls -alH'

# RC change reloading
alias vimrc='vim ~/.bernsteinrc.sh'
alias reload='source ~/.bashrc'

# Prompt stuff
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's|* \(.*\)|[\1]|'
}
export PROMPT_DIRTRIM=3
PS1='\[\e[0;96m\]\u: \[\e[0;93m\]\w \[\e[0;92m\]$(parse_git_branch)\n\[\e[0m\]$ '

# Create .inputrc if it doesn't exists
if [ ! -f "$HOME/.inputrc" ]; then
  cat << EOF > ~/.inputrc
# Ignore case while completing
set completion-ignore-case on
EOF
fi

# Create .hushlogin file if it doesn't exist
if [ ! -f "$HOME/.hushlogin" ]; then
  touch $HOME/.hushlogin
fi

source /usr/share/bash-completion/completions/git