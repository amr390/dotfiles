#!/usr/bin/env python3
import os
import glob
import shutil
import zipfile
import datetime
import subprocess

HOME = os.environ['HOME']
BASH_FOLDER = os.pardir
BASHRC = os.path.abspath(os.path.join(BASH_FOLDER, 'bashrc'))
HOME_BASHRC = os.path.join(HOME, '.bashrc')
SOURCE_COMMAND = ['bash', '-c', 'source ~/.bashrc']
DATETIME_PREFIX = datetime.datetime.today().strftime('%Y%m%d%H%M_')


def install_vim():
    subprocess(['./bootstrap.sh'])


def backup_files():
    bash_files = glob.glob(os.path.join(HOME, '.bash*'))
    bkp_path = os.path.join(BASH_FOLDER, 'bkp', DATETIME_PREFIX + 'bash.zip')
    os.mkdir(os.path.join(BASH_FOLDER, 'tmp'))

    for f in bash_files:
        if not os.path.islink(f):
            shutil.move(f, os.path.join(BASH_FOLDER, 'tmp'))

    with zipfile.ZipFile(bkp_path, 'w') as myZip:
        for f in os.listdir(os.path.join(BASH_FOLDER, 'tmp')):
            filename = os.path.join(BASH_FOLDER, 'tmp', f)
            myZip.write(filename, f, zipfile.ZIP_DEFLATED)

    shutil.rmtree(os.path.join(HOME, 'tmp'))


def install_bash():
    if os.path.isfile(HOME_BASHRC) or os.path.islink(HOME_BASHRC):
        os.remove(HOME_BASHRC)

    os.symlink(BASHRC, HOME_BASHRC)

    subprocess.Popen(SOURCE_COMMAND, stdout=subprocess.PIPE)


if __name__ == '__main__':
    backup_files()
    install_bash()
    install_vim()
