# P10K
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey -e # Set Emacs keybinds

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh # Autosuggestions
source ~/.p10k/powerlevel10k.zsh-theme # P10K
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Syntax highlighting

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# FZF
function ff() {
    command fzf --preview '
        if [ -d {} ]; then
            command -v eza >/dev/null && eza --icons always --group-directories-first --git --color=always {} || ls -lh {}
        else
            command -v bat >/dev/null && bat --color=always {} || cat {}
        fi
    '
}

# Yazi
function yy() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(<"$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# Set window titles
autoload -Uz add-zsh-hook
add-zsh-hook precmd () {
    printf '\e[1 q'
    print -Pn "\e]0;%n@%m: %~\a"
}

# Compinit
ZSH_COMPDUMP="${XDG_CACHE_HOME:-$HOME/.cache}/zcompdump"
autoload -Uz compinit
if [[ -n "$ZSH_COMPDUMP" && -f "$ZSH_COMPDUMP" ]]; then
    compinit -d "$ZSH_COMPDUMP"
else
    compinit
fi

# Aliases
alias -- bat = 'bat --color=always --theme=gruvbox-dark --style=numbers'
alias -- cat = 'bat --color=always --theme=gruvbox-dark --style=plain'
alias -- cd = z
alias -- fzf = ff
alias -- grep = rg
alias -- ll = 'eza -lh'
alias -- lla = 'eza -lha'
alias -- ls=eza
alias -- lsa= 'eza -a'
alias -- vim=nvim

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
