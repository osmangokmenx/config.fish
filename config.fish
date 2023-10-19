set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always
set -Ux FZF_TMUX_OPTS "-p 55%,60%"

# aliases
# alias ls "ls -p -G"
# alias la "ls -A"
# alias ll "ls -l"
# alias lla "ll -A"
#
# alias ls="exa --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group"
# alias ls='exa --color=auto'
alias la="ls -a"
alias ll="ls -al"
alias g git

alias python python3
command -qv nvim && alias vim lvim 
export PATH="$PATH:`pwd`/flutter/bin"

abbr tn "tmux new -s (pwd | sed 's/.*\///g')"


alias opf "cd ~/Documents/Projects"
alias ovf "cd ~/.config/nvim"
alias ocf "cd ~/.config"
alias gl "git log --oneline --decorate --graph --all"


alias vim="nvim"
# alias code="codium"

set -gx EDITOR /opt/homebrew/bin/nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH


switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end


# PATH
# ~/.config/tmux/plugins
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin

zoxide init fish | source
