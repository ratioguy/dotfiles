# Set shell enviornment Varibles
export HOSTNAME=$(cat /etc/hostname)
export FZF_DEFAULT_COMMAND="fd . ~ --hidden"
export EDITOR="nvim"
export MANPAGER='nvim +Man!'
export PATH=~/.local/bin:$PATH
export SHFM_OPENER=~/.local/bin/opener.sh
