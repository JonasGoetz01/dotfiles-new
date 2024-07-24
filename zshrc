export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:~/.local/bin

# History file settings
HISTFILE=~/.local/share/zsh/zsh_history
setopt NO_HIST_VERIFY
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

source $HOME/.dotfiles/shellrc

case "$(uname -s)" in
    Linux)
        # Load grc
        [[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh
        ;;
    Darwin)
        # Load iTerm2 shell integration
        [[ -s "~/.local/share/zsh/iterm2_shell_integration.zsh" ]] && source "~/.local/share/zsh/iterm2_shell_integration.zsh"
        # Load grc
        [[ -s "`brew --repository`/etc/grc.zsh" ]] && source "`brew --repository`/etc/grc.zsh"
        ;;
esac
