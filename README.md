# Oh My Zsh `custom`

Personal [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) [customization directory](https://github.com/ohmyzsh/ohmyzsh/wiki/Customization).

Clone to `~/.oh-my-zsh/custom` or point `$ZSH_CUSTOM` to the clone location.

## Structure

* `./aliases.zsh`: miscellaneous aliases and shell functions.
* `./themes/`: oh my zsh themes. Generally git submodules.
* `./plugins/`: oh my zsh plugins. Generally git submodules.
* `./other/`: other zsh configuration. Currently just p10k config.

## Setup

Start by installing [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) and [Oh My Zsh](https://ohmyz.sh/#install).

### Cloning

By default, Oh My Zsh's custom directory is located at `~/oh-my-zsh/custom`. The simplest way to use this repo is to clone it to that location. Alternatively, clone anywhere and point `$ZSH_CUSTOM` to the clone location.

This repo includes several submodules that need to be initialized/populated. This can be done automatically at cloning time by passing `--recurse-submodules`. Since some submodules are quite large (e.g. powerlevel10k), it's also recommended to pass `--shallow-submodules` to perform shallow clones for the submodules.

```shell
$ cd ~/.oh-my-zsh/
$ rm -r ./custom

# Option 1 - all at one
$ git clone --recurse-submodules --shallow-submodules -- <repo> custom

# Optiona 2 - manual

$ git clone -- <repository> custom
$ cd custom
$ git submodule init
$ git submodule update --depth=1
```

### Powerlevel10k theme config
* Link the config file
  ```shell
  $ ln -fs ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/other/.p10k.zsh ~/.p10k.zsh
  ```
* Install the [reocommended fonts](https://github.com/romkatv/powerlevel10k#manual-font-installation).

### Optional External Dependencies
* [FZF](https://github.com/junegunn/fzf)
    * Install per README
    * Add `fzf` to `plugins`. Ships with Oh My Zsh.
* [poetry](https://python-poetry.org/)
    * Install normally.
    * Run
      ```shell
      $ mkdir $ZSH_CUSTOM/plugins/poetry
      $ poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
      ```
    * Add `poetry` to `plugins`.


### Update `~/.zshrc`
```shell

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    colored-man-pages
    command-not-found
    zsh-syntax-highlighting
    # fzf  # if fzf installed
    # poetry  # if poetry installed
    # rust  # if rust installed
)
```

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
