# JesseBilsten’s dotfiles

This is a fork of [mathias's dotfiles](https://github.com/mathiasbynens/dotfiles/) with a focus on Design & Development.  Go read mathias's README if you have't yet. This fork uses [carlhuda's janus](https://github.com/carlhuda/janus) for MacVim.  Feel free to modify it as you see fit.  The leader is `;` by default but can be changed in `~/.vimrc.before`.

## Installation

### Using Git

You can clone the repository wherever you want. (I like to keep mine in `~/Projects/dotfiles`, as each `~/.file` is a symlink to repository version so there's no reason to constantly reinstall).  This allows you and scripts to modify the expected `~/.file` within the ~ directory without any fear of overwriting necessary changes later by accident.

TODO: Create a shell script to archive and symlink current `~/.files`

```bash
git clone https://github.com/jessebilsten/dotfiles.git && cd dotfiles && ./install.sh
```

When updating a `~/.file` make sure you check in your changes into your forked version and maintain the flow of dotfile changes in case you run into errors.

### Git-free install

Don't do this.  Maintain a history of your `~/.files` in git for your own sanity.  Think of the children!

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used](https://github.com/mathiasbynens/dotfiles/blob/aff769fd75225d8f2e481185a71d5e05b76002dc/.aliases#L21-26)) takes place.

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add custom commands without creating a new fork

> This was previously called `.extra` by [Mathias Bynens](https://github.com/mathiasbynens) but it didn't feel like "extra" information, it was local to me which is why it's in my user directory.  [Dotmatrix](http://hashrocket.com/blog/posts/dotmatrix-the-hashrocket-dot-file-repo) suggests to throw the `.local` extension onto any other dotfile that has a local setting (e.g. `.bash_profile.local`) and this feels accurate including the parentless `.local` for user specific information.

`~/.local` is not necessary, but if you want a separate place to manage variables local to a machine, this is where to put them.

My `~/.local` looks something like this:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Jesse Bilsten"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="jesse@bilsten.net"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.local` to override settings, functions and aliases from my dotfiles repository. It’s probably better to [fork this repository](https://github.com/jessebilsten/dotfiles/fork) instead, though.

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
brew bundle ~/Brewfile
```

### Install native apps with `brew cask`

You could also install native apps with [`brew cask`](https://github.com/phinze/homebrew-cask):

```bash
brew bundle ~/Caskfile
```

## Feedback

Suggestions/improvements
[welcome](https://github.com/jessebilsten/dotfiles/issues)!

## Author

| [![twitter/lostangel](https://s.gravatar.com/avatar/783e5f83be9701ba77f7e5ae861597b0?s=80)](http://twitter.com/lostangel "Follow @lostangel on Twitter") |
|---|
| [Jesse Bilsten](http://bilsten.net/) |

## Thanks to…

* [Mathias Bynens](https://github.com/mathiasbynens) and the [dotfiles](https://github.com/mathiasbynens/dotfiles) that started it all
* [Paul Irish](http://paulirish.com) and his [dotfiles repository](https://github.com/paulirish/dotfiles)

