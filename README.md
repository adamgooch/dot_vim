# .vim

My Vim setup.

## Installation

Clone this repository into home directory:

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

## Workflow Dependencies

There are few external dependencies that my workflow has.

### Ack

This plugin requires the `ack` command line utililty and/or The Silver Searcher.
On my mac, these are both installed via homebrew:

```shell
$ brew install ack
$ brew install the_silver_searcher
```

### Exuberant Ctags

Exuberant Ctags is better than the default ctag installation on MacOS. I install
it via homebrew:

```shell
$ brew install ctags
```

I don't use the Easy Tags plugin at the moment so the tags are generated on a per
project basis by entering the project root directory and running ctags:

```shell
$ cd ~/source/aview
$ ctags -R
```

### Plugins

Oopen vim (you'll get a warning that the color scheme isn't installed, but that is
okay). Install the plugins within Vim with:

```
:PlugInstall
```

If you want to reload your current vim session with the newly installed plugins
(ie. you have a bunch of files open that you don't want to reopen)

```
:so ~/.vimrc
```
