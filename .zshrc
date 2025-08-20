# PS1
autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$fg[white]%}$%b "

# History
HISTFILE=~/.cache/zsh_history
HISTSIZE=5000
SAVEHIST=5000

# Enable aliasrc
source ~/.config/aliasrc



# Ls autocomplete colors
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Vi mode
zmodload -i zsh/complist
bindkey -v
export KEYTIMEOUT=1

# Use vi keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes
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
    zle -K viins # Initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Make neovim default editor
export EDITOR=nvim
export VISUAL=nvim

# Set manpager to neovim
export MANPAGER='nvim +Man!'

# Make control+left/right move cursor
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Control+backspace and control+delete text delete shortcut
bindkey '^H' backward-kill-word
bindkey '^[[M' kill-word

# Make delete key work
bindkey "^[[P" delete-char
bindkey -M vicmd '^[[P' delete-char

# Make home and end key work
bindkey "^[[H" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey -M vicmd "^[[H" beginning-of-line
bindkey -M vicmd "^[[4~" end-of-line

# Fine tune completion
zstyle ':completion:*' menu no
autoload -U compinit
zmodload zsh/complist

# Make completion case insensitive
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Make lf cd on exit
lf () {
    cd "$(command lf -print-last-dir "$@")"
}

# Start zoxide and zsh-syntax-highlighting
eval "$(zoxide init zsh)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
