#!/usr/bin/env python3
# --- INSTALL Bash and Vim custom tools
#
#   TODO: add here the proper description
#
#

import os, glob, shutil, zipfile, datetime, subprocess

HOME = os.environ['HOME']
HOME_BASHRC = os.path.join(HOME, '.bashrc')
DOTFILES_FOLDER = os.path.join(HOME, 'Documents', 'dotfiles')
BASHRC = os.path.abspath(os.path.join(DOTFILES_FOLDER, 'bashrc'))
SOURCE_COMMAND = ['bash', '-c', 'source ~/.bashrc']
DATETIME_PREFIX = datetime.datetime.today().strftime('%Y%m%d%H%M_')


def install_vim():
    vim_snippets_path = os.path.join(DOTFILES_FOLDER, 'vim', 'vim-grails-snippets')
    home_vim_snippets = os.path.join(HOME, '.vim', 'bundle', 'vim_snippets')
    subprocess.call([os.path.join(DOTFILES_FOLDER, 'bin', 'bootstrap.sh')])
    shutil.copytree(vim_snippets_path, home_vim_snippets)


def backup_files():
    bash_files = glob.glob(os.path.join(HOME, '.bash*'))
    bkp_path = os.path.join(DOTFILES_FOLDER, 'bkp', DATETIME_PREFIX + 'bash.zip')
    os.mkdir(os.path.join(DOTFILES_FOLDER, 'tmp'))

    for f in bash_files:
        if not os.path.islink(f):
            shutil.move(f, os.path.join(DOTFILES_FOLDER, 'tmp'))

    with zipfile.ZipFile(bkp_path, 'w') as myZip:
        for f in os.listdir(os.path.join(DOTFILES_FOLDER, 'tmp')):
            filename = os.path.join(DOTFILES_FOLDER, 'tmp', f)
            myZip.write(filename, f, zipfile.ZIP_DEFLATED)

    shutil.rmtree(os.path.join(DOTFILES_FOLDER, 'tmp'))


def install_bash():
    if os.path.isfile(HOME_BASHRC) or os.path.islink(HOME_BASHRC):
        os.remove(HOME_BASHRC)

    os.symlink(BASHRC, HOME_BASHRC)

    subprocess.Popen(SOURCE_COMMAND, stdout=subprocess.PIPE)


if __name__ == '__main__':
    backup_files()
    install_bash()
    install_vim()
