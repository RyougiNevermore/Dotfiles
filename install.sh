#!/bin/bash
echo "Begin to install ... "

# Dotfiles' path
dofiles_src=`pwd`
echo "Dotfiles' path = $dofiles_src"

# link func
linkFile() {
    echo "link file (sf) $1 < $2"
    ln -sf $1 $2
}

# git
git_src="$dofiles_src/git"
echo "install git dot files, link source = $git_src"

linkFile "$git_src/gitconfig" "$HOME/.gitconfig"
linkFile "$git_src/gitignore" "$HOME/.gitignore"
linkFile "$git_src/gitmessage" "$HOME/.gitmessage"

echo "install git dot files succ!"
# vim
vim_src="$dofiles_src/vim"
echo "install vim dot files, link source = $vim_src"

linkFile "$vim_src/basic.vim" "$HOME/.vimrc"

linkFile "$vim_src/runtime" "$HOME/.vim_runtime"

echo "install vim dot files succ! NOTE: see README.md to setup Vim."

# node npm
echo "install npm dot files, link source = $dofiles_src"

linkFile "$dofiles_src/npmrc" "$HOME/.npmrc"

echo "install npmrc dot files succ! "

# python pip
echo "install python pip dot files, link source = $dofiles_src"

linkFile "$dofiles_src/pip.conf" "$HOME/.pip.conf"

echo "install python pip dot files succ! "




echo "Finish all, enjoy it, use update.sh to update it."