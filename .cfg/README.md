## dotfiles in a bare git repository
## https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

## from scratch
    git init --bare $HOME/.cfg
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    config config --local status.showUntrackedFiles no
    echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

## example
    config status
    config add .vimrc
    config commit -m "Add vimrc"

## install to new system
    echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
    echo ".cfg" >> .gitignore
    git clone --bare <git-repo-url> $HOME/.cfg
    config checkout

## if error because files exist - backup existing config
    mkdir -p .config-backup && \
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
    xargs -I{} mv {} .config-backup/{}
    
    config checkout # retry
    
    config config --local status.showUntrackedFiles no

