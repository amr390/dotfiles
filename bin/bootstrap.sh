#!/usr/bin/env bash
############################  SETUP PARAMETERS
app_name='dotfiles/vim'
debug_mode='0'

############################  BASIC SETUP TOOLS
msg() {
    printf '%b\n' "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
    msg "\e[32m[✔]\e[0m ${1}${2}"
    fi
}

error() {
    msg "\e[31m[✘]\e[0m ${1}${2}"
    exit 1
}

debug() {
    if [ "$debug_mode" -eq '1' ] && [ "$ret" -gt '1' ]; then
      msg "An error occured in function \"${FUNCNAME[$i+1]}\" on line ${BASH_LINENO[$i+1]}, we're sorry for that."
    fi
}

program_exists() {
    local ret='0'
    type $1 >/dev/null 2>&1 || { local ret='1'; }

    # throw error on non-zero return value
    if [ ! "$ret" -eq '0' ]; then
    error "$2"
    fi
}

############################ SETUP FUNCTIONS
lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
    ret="$?"
    debug
}

clone_plug () {
    eval `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ 
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

    ret="$?"
    success "$1"
    debug
}

create_symlinks() {
    endpath="$HOME/$app_name"

    lnif "$endpath/vimrc"              "$HOME/.vimrc"
    lnif "$endpath/vimrc.bundles"      "$HOME/.vimrc.bundles"
    lnif "$endpath/eslintrc"      "$HOME/.eslintrc"
    lnif "$endpath/tslintrc"      "$HOME/.tslintrc"

    ret="$?"
    success "$1"
    debug
}

setup_plug() {
    system_shell="$SHELL"
    export SHELL='/bin/sh'
    vim -u "$HOME/.vimrc.bundles" +PlugInstall! +PlugClean +qall
    export SHELL="$system_shell"

    success "$1"
    debug
}

copy_folders() {
    cp -rf "$endpath/syntax" "$HOME/.vim/"

    success "$1"
    debug
}

############################ MAIN()
program_exists "vim" "To install $app_name you first need to install Vim."

create_symlinks "Setting up vim symlinks"

clone_plug "Successfully cloned plug"

setup_plug "Now updating/installing plugins using Plug"

copy_folders "copy syntax folder into .vim"

msg "\nThanks for installing $app_name."
msg "© `date +%Y` A forked of http://vim.spf13.com/ suite simplified"
