
使用vundle管理vim插件:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

ycm需要自己clone到.vim下,并使用下面命令安装:(使用系统的clang编译)

```base
./install.sh --all --system-libclang
```

装不好 ycm 可以直接删除：

```bashe
sudo rm -rf ~/.vim/bundle/YouCompleteMe
```
