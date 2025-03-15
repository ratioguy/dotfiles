#PS1
autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$fg[white]%}$%b "

#set $TERM 
export TERM=xterm-256color

#history
HISTFILE=~/.cache/zsh_history
HISTSIZE=5000
SAVEHIST=5000

#enable aliasrc
source ~/.config/aliasrc

#ls autocomplete colors
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#vi mode
zmodload -i zsh/complist
bindkey -v
export KEYTIMEOUT=1

#use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

#change cursor shape for different vi modes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins #initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#edit line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#make neovim default editor
export EDITOR=nvim
export VISUAL=nvim

#make control+left/right move cursor
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#control+backspace and control+delete text delete shortcut
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

#make delete key work
bindkey "^[[3~" delete-char
bindkey -M vicmd '^[[3~' delete-char

#make home and end key work
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

#fine tune completion
zstyle ':completion:*' menu no
autoload -U compinit
zmodload zsh/complist

#make completion case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

#make lf cd on exit
lf () {
    cd "$(command lf -print-last-dir "$@")"
}

#start zoxide and zsh-syntax-highlighting
eval "$(zoxide init zsh)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
