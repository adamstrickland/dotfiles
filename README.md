# Dotfiles

## Usage

1. Update MacOS

  ```sh
  
  ```

1. Install XCode tools

  ```sh
  xcode-select --install
  ```

1. Create an SSH key & upload it to github

  ```sh
  ssh-keygen -t ed25519 -C "youremail@example.com"
  eval "$(ssh-agent -s)"
  touch ~/.ssh/config
  echo "Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_ed25519
  " >> ~/.ssh/config
  ssh-add -K ~/.ssh/id_ed25519
  pbcopy < ~/.ssh/id_ed25519.pub
  ```

  See https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account for instructions on adding to your Github account

1. Clone this repo

  ```sh
  cd ~
  git clone --recurse-submodules git@github.com:adamstrickland/dotfiles ~/.dotfiles
  ```

1. Run setup:
  1. First, download the script:

  ```sh
  curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac > $HOME/.dotfiles/.bin/mac
  ```

  2. Second, execute said script:

  ```sh
  sh $HOME/.dotfiles/.bin/mac
  ```

1. Install OhMyZsh

  ```sh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

1. Run `rcup`

  ```sh
  env RCRC=$HOME/.dotfiles/rcrc rcup
  ```

1. Install other stuff

  ```sh
  brew bundle --file=$HOME/.dotfiles/.Brewfile
  ```

1. Add homebrew's zsh to /etc/shells and chsh to use it. Then restart the
   terminal to take effect.

  This repo's zshrc uses a compinit optimization that drastically speeds up the
  shell's startup performance. However, the optimization doesn't work unless
  the terminal session is initiated with the same shell that performs the
  optimization. Otherwise, it just recompiles compinit every time. Also, Apple
  isn't good about keeping its shell(s) up to date; on my M1 MBP, the zsh that
  is installed by the OS is for i386. Homebrew does a better job of keeping the
  shell updated, so we need to set MacOS to use it:

  ```sh
  sudo echo "/opt/homebrew/bin/zsh" >> /etc/shells
  chsh -s /opt/homebrew/bin/zsh
  ```

1. Customize! Most, if not all, machine-specific changes should go in
   `~/.zshrc.local`, so create that file and get to work.

## Troubleshooting

#### Permissions problem(s)

`brew update` can fail with permission problems, commonly reporting the error `permission denied @ rb_file_s_symlink`.  This can be fixed byupdating the ownership of the homebrew root directory:

```sh
sudo chown -R $(id -un) $(brew --prefix)/*
```
