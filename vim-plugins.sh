mkdir -p ~/.vim/bundle ~/.vim/autoload
cd ~/.vim/bundle

git clone https://github.com/scrooloose/syntastic.git
git clone git://github.com/tpope/vim-commentary.git
git clone git://github.com/tpope/vim-fugitive.git
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
git clone git://github.com/tpope/vim-sensible.git

cd -
