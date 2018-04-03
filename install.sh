#!/bin/bash
echo "Begin to install ... "

echo "Have you installed zsh ?"
echo "This may overwrite existing files in your home directory."

read -p "Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;


# link func
function linkFile() {
    echo "link file (sf) $1 < $2"
    ln -sf $1 $2
}

function doIt() {
    # Dotfiles' path
    dofiles_src=`pwd`
    echo "Dotfiles' path = $dofiles_src"

    # git
    read -p "Install dotfiles for git? (y/n) " -n 1;
    	echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            
            git_src="$dofiles_src/git"
            echo "install git dot files, link source = $git_src"

            linkFile "$git_src/gitconfig" "$HOME/.gitconfig"
            linkFile "$git_src/gitignore" "$HOME/.gitignore"
            linkFile "$git_src/gitmessage" "$HOME/.gitmessage"

            echo "install git dot files succ!"

        fi;

    
    # vim
    read -p "Install dotfiles for vim? (y/n) " -n 1;
        echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then

            vim_src="$dofiles_src/vim"
            echo "install vim dot files, link source = $vim_src"

            linkFile "$vim_src/basic.vim" "$HOME/.vimrc"

            linkFile "$vim_src/runtime" "$HOME/.vim_runtime"

            echo "install vim dot files succ! NOTE: see README.md to setup Vim."

        fi;
    
    # node npm
    read -p "Install dotfiles for npm? (y/n) " -n 1;
        echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then

            echo "install npm dot files, link source = $dofiles_src"

            linkFile "$dofiles_src/npmrc" "$HOME/.npmrc"

            echo "install npmrc dot files succ! "

        fi;
        
    # python pip
    read -p "Install dotfiles for pip? (y/n) " -n 1;
        echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then

            echo "install python pip dot files, link source = $dofiles_src"

            linkFile "$dofiles_src/pip.conf" "$HOME/.pip.conf"

            echo "install python pip dot files succ! "

        fi;

    # curl
    read -p "Install dotfiles for curl? (y/n) " -n 1;
        echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then

            echo "install curl dot files, link source = $dofiles_src"

            linkFile "$dofiles_src/curlrc" "$HOME/.curlrc"

            echo "install curl dot files succ! "

        fi;
        
    # alias
    read -p "append aliases into ~/.zshrc ? (y/n) " -n 1;
        echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then

            cat $dofiles_src/alias >> $HOME/.zshrc
            echo "setup alias succ! "

        fi;
    
    # exports
    read -p "append exports into ~/.zshrc ? (y/n) " -n 1;
        echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then

            cat $dofiles_src/exports >> $HOME/.zshrc
            echo "setup exports succ! "

        fi;

    echo "Finish all, enjoy it, use update.sh to update it."

}

