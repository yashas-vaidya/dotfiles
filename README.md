## Dotfiles repo example

> :warning: **WARNING:** This repo is [forked](https://github.com/michaeljsmalley/dotfiles). Please read below to find the original introduction by [Michael J. Smalley](https://github.com/michaeljsmalley). It shows how to store, replicate and use these dotfiles. 
This is an example of a simple yet working dotfile repo. It customizes user settings on Linux/ MacOS for `zsh`--the Z shell. It provides a minimal base that can be modified or customzied for different machines and environs.

> :shrug: *NOTE:* Preferences for the customization of dotfiles depends on use case, development needs. YMMV!

If you want to read more about dotfiles, [this blog post provides a more detailed introduction](https://web.archive.org/web/20201101094752/https://about.gitlab.com/blog/2020/04/17/dotfiles-document-and-automate-your-macbook-setup/).

Similar to the simple example here, there are many tools to manage dotfiles. Here's a quick list:

- [dotfiles](python dotfiles): dotfiles for Python-based development
- [chezmoi](): public repo for dotfiles
- [Yet Another Dotfiles Manager](https://github.com/TheLocehiliosan/yadm): programmatic dotfiles management


## Original introduction with modificaitons

This repository includes ~~all~~ some of my custom dotfiles.  They should be cloned to ~~your~~ a user's home directory so that the path is `~/dotfiles/`. The included setup script creates symlinks from ~~your~~ the home directory to the files which are located in `~/dotfiles/`.

The setup script is somewhat smart ~~enough~~ to back up ~~your~~ the existing dotfiles into a `~/dotfiles_old/` directory if you already have any dotfiles of the same name as the dotfile symlinks being created in ~~your~~ the home directory.

I ~~also~~ sometimes prefer `zsh` as my shell of choice. ~~As such~~ On top, the setup script will also clone the `oh-my-zsh` repository from ~~my~~ GitHub. It then checks to see if `zsh` is installed.  If `zsh` is installed, and it is not already configured as the default shell, the setup script will execute a `chsh -s $(which zsh)`. This changes the default shell to zsh, and takes effect as soon as a new zsh is spawned or on next login.

So, to recap, the install script will:

1. Back up any existing dotfiles in your home directory to `~/dotfiles_old/`
2. Create symlinks to the dotfiles in `~/dotfiles/` in your home directory
3. Clone the `oh-my-zsh` repository from [GitHub](https://github.com/ohmyzsh/ohmyzsh) (for use with `zsh`)
4. Check to see if `zsh` is installed, if it isn't, try to install it.
5. If zsh is installed, run a `chsh -s` to set it as the default shell.

## Installation

``` bash
git clone https://github.com/yashas-vaidya/dotfiles ~/dotfiles
cd ~/dotfiles
./makesymlinks.sh
```