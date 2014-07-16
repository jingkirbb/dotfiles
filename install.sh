DOTFILES_PATH=$HOME/p/dotfiles

mkdir -p $DOTFILES_PATH
mkdir -p $HOME/bin
git clone https://github.com/dmitriiabramov/dotfiles.git $DOTFILES_PATH
find ~/p/dotfiles/dots -name '.*' | xargs -I % ln -sf % ~

cat $DOTFILES_PATH/ohmyzsh.sh | sh
sudo echo `which bash` >> /etc/shells
chsh -s /bin/zsh

curl -o $HOME/vim.tar.bz2 ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
bzcat $HOME/vim.tar.bz2 > $HOME/vim.tar
tar xvf $HOME/vim.tar
cd $HOME/vim74 && make
ln -sf $HOME/vim74/src/vim $HOME/bin/
git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
$HOME/bin/vim +PluginInstall +qall
