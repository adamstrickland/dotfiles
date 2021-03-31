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
  git clone git@github.com:adamstrickland/dotfiles ~/.dotfiles
  ```

1. Run setup

  ```sh
  sh ~/.dotfiles/.bin/setup
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

## Troubleshooting

#### Permissions problem(s)

`brew update` can fail with permission problems, commonly reporting the error `permission denied @ rb_file_s_symlink`.  This can be fixed byupdating the ownership of the homebrew root directory:

```sh
sudo chown -R $(id -un) $(brew --prefix)/*
```
