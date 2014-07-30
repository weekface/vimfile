mkdir -p ~/tmp
rm -rf ~/tmp/vim-backup
mkdir -p ~/.vim
mv ~/.vim ~/tmp/vim-backup

git clone https://github.com/weekface/vimfile.git ~/.vim

cd ~/.vim

mkdir -p ~/.vim/bundle

# cp .vimrc ~/.vimrc
# cp .gvimrc ~/.gvimrc

rm ~/.vimrc
rm ~/.gvimrc

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc

touch ~/.vim/.vimrc_local
touch ~/.vim/.gvimrc_local

mkdir -p ~/.vim/vundle
cd ~/.vim/vundle && git clone git://github.com/gmarik/vundle.git .
vim +BundleInstall +qall

rm -rf ~/.vim/bundle/snipmate.vim/snippets

# install monaco font
cd ~/tmp
wget http://www.gringod.com/wp-upload/MONACO.TTF
sudo cp MONACO.TTF /usr/share/fonts/truetype/
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
sudo fc-cache -f -v

cd ~/tmp
wget http://www.gringod.com/wp-upload/MONACO.TTF
sudo cp MONACO.TTF /usr/share/fonts/truetype/
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
sudo fc-cache -f -v

echo "下面为golang开发进行的特殊配置，包括："
echo "安装gocode自动提示"
echo "安装godef自动跳转"
echo "不需要的请勿安装!确定安装吗？(Y/N)"

read ANSWER
case $ANSWER in
[Yy])
  source ~/.bashrc
  cp -r $GOROOT/misc/vim/* ~/.vim/
  go get -u github.com/nsf/gocode
  go get code.google.com/p/rog-go/exp/cmd/godef
  cd $GOPATH/src/github.com/nsf/gocode/vim
  ./update.sh
  gocode set propose-builtins true
  ;;
[Nn])
  echo "已经跳过安装..."
  ;;
esac
