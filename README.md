# .vim

Clone into home directory:

```shell
$ cd
$ git clone https://github.com/gpneuma/dot_vim
```

Move the contents of dot_vim to `.vim` (including the git files)

```shell
$ mv dot_vim/.[!.]* .vim
```

Copy the `vimrc` file into the home directory

```shell
$ cp .vim/vimrc .vimrc
```

Open vim and install the plugins with `:PlugInstall`. When vim is opened,
you'll get a warning that the color scheme isn't installed, but that is okay.
Just press enter.

```shell
Error detected while processing /home/adam/.vimrc:
line   28:
E185: Cannot find color scheme 'blah'
Press ENTER or type command to continue
```
