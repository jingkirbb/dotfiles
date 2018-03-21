DOTFILES_PATH=$HOME/p/dotfiles

mkdir -p $DOTFILES_PATH
mkdir -p $HOME/bin
git clone https://github.com/dmitriiabramov/dotfiles.git $DOTFILES_PATH
find ~/p/dotfiles/dots -name '.*' | xargs -I % ln -sf % ~

cat $DOTFILES_PATH/ohmyzsh.sh | sh
sudo echo `which bash` >> /etc/shells
chsh -s /bin/zsh
