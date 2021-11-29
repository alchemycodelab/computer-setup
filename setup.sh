#!/usr/bin/env bash

set -e

function info {
  echo -e "\e[34m${1}\e[0m"
}

function warn {
  echo -e "\e[33m${1}\e[0m"
}

function error {
  echo -e "\e[31m${1}\e[0m" 1>&2
  exit 1
}
 
OS=$(uname -s)
if [[ $OS != Linux && $OS != Darwin ]]; then
  error "Unsupported Operating System: ${OS}"
fi

if [[ -z $(command -v apt) ]]; then
  error "Unsupported Linux Distribution"
fi

function updateAPT {
  if [[ $OS == Linux ]]; then
    clear
    info "Updating APT Database"
    sudo apt update
    sudo apt -y upgrade
    sudo apt autoremove
  fi
}

function installHomebrew {
  if [[ $OS != Darwin ]]; then
    return
  fi
  
  clear

  if [[ -n $(command -v brew) ]]; then
    warn "Homebrew already installed"
    return
  fi

  info "Istalling Homebrew"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

function installNVM {
  clear

  if [ $SHELL = '/bin/zsh' ] && [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
  fi

  if [ $SHELL = '/bin/bash' ] && [ ! -f ~/.bash_profile ]; then
    touch ~/.bash_profile
  fi

  if [[ -f "$HOME/.nvm/nvm.sh" ]]; then
    source $HOME/.nvm/nvm.sh
  fi
  
  if [[ -n $(command -v nvm) ]]; then
    warn "NVM already installed"
    return
  fi

  info "Installing nvm"
  mkdir ~/.nvm

  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
  export NVM_DIR="$HOME/.nvm"

  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

function installNode {
  clear
  info "Installing node.js"
  nvm install node
  npm install -g eslint
}

function installGit {
  clear
  if [[ -n $(command -v git) ]]; then
    warn "git already installed"
    return
  fi

  info "Installing git"
  if [[ $OS == Linux ]]; then
    sudo apt install -y git
  else
    brew install git
  fi
}

updateAPT
installHomebrew
installNVM
installNode
installGit

echo "GIT `git --version`"
echo "NODE `node --version`"
echo "NPM `npm --version`"

echo -e "\n\n\e[1m\e[32mSUCCESS! :)\e[0m\n\n"
