# Overrides default in ~/.oh-my-zsh/lib/directories.zsh
# -a all
# -l long listing format
# -h human readable sizes, powers of 1024
# -F append indicator to entries
alias ll="ls -alhF"

screen-off() {
    cinnamon-screensaver-command --lock
    sleep 0.5 && xset dpms force off
}

