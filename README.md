## Ubuntu Install

```bash
$ curl -s https://raw.githubusercontent.com/weekface/vimfile/master/install | bash
$ cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ~/.vim/bundle/YouCompleteMe/install.py --gocode-completer # if you want golang env.
$ vim +GoInstallBinaries +qall # if you want golang env.
```

## Screenshot

![VIM](https://raw.github.com/weekface/vimfile/master/vim.png)
