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

# Selectively add miniconda bin directory to PATH.
#
# Use as
#     $ eval $(use_conda)
use_conda() {
    miniconda_bin=${1:-~/miniconda3/bin}
    if [[ ! -d "${miniconda_bin}" ]]; then
        echo "Error: miniconda3 bin directory (${miniconda_bin}) not found" >&2
        return 1
    fi
    echo "export PATH=${miniconda_bin}\${PATH:+:\$PATH}"
}

