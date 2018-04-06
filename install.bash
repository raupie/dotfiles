#!/bin/bash
############################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

# Variables
dir=~/.dotfiles                    # dotfiles directory
olddir=~/.dotfiles_old             # old dotfiles backup directory
# default list of files
files=".bashrc .bash_profile .bash_aliases .vimrc"
# optional files to add
dreamhost="y"
docker="y"
ez="y"
git="y"
tmux="y"

option=""
while [[ ! $option =~ ^[0-1]+$ ]]; do
    echo "Installation Options:"
    echo "[0] Full"
    echo "[1] Custom"
    read option
done

# dreamhost configuration
if [[ $option -eq 1 ]];
then
    read -p "Install Dreamhost Aliases: {y/n}? " dreamhost
fi
case "$dreamhost" in 
    y|Y ) files=$files" .dreamhost_profile";;
esac

# docker configuration
if [[ $option -eq 1 ]];
then
    read -p "Install Docker Aliases: {y/n}? " docker
fi
case "$docker" in
    y|Y ) files=$files" .docker_aliases";;
esac

# wsl docker configuration
if [[ $option -eq 1 ]];
then
    read -p "Docker WSL Mount Letter (Optional): " docker_mount_path
fi

if [[ ! -z $docker_mount_path ]]
    if [[ ! -d "/mnt/$docker_mount_path" ]];
    then
        mkdir -p /mnt/$docker_mount_path
        mount -t drvfs ${docker_mount_path^^}: /mnt/$docker_mount_path
        mkdir -p /$docker_mount_path
        mount --bind /mnt/$docker_mount_path /$docker_mount_path
    else
        echo "Error: Path could not be found or already exists: /mnt/$docker_mount_path";
    fi
fi

# ez configuration
if [[ $option -eq 1 ]];
then
    read -p "Install eZ Aliases: {y/n}? " ez
fi
case "$ez" in
    y|Y ) files=$files" .ez_profile";;
esac

# git configuration
if [[ $option -eq 1 ]];
then
    read -p "Install Git Aliases: {y/n}? " git
fi
case "$git" in
    y|Y ) files=$files" .gitconfig .gitignore_global";;
esac

# tmux configuration
if [[ $option -eq 1 ]];
then
    read -p "Install Tmux Aliases: {y/n}? " tmux
fi
case "$tmux" in
    y|Y ) files=$files" .tmux.conf";;
esac

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file $olddir/$file
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
    echo "$file ...done"
done