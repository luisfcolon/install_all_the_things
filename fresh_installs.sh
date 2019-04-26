#!/usr/bin/env bash

pushd() {
  command pushd $@ > /dev/null
}

popd() {
  command popd $@ > /dev/null
}

declare -a root_folders=(
  "Workspace"
)

declare -a workspace_folders=(
  "projects"
  "sites"
  "repos"
  "docs"
  "playground"
)

declare -a project_folders=(
  "php"
  "python"
  "ruby"
  "javascript"
  "shell"
  "scala"
  "css"
  "tutorials"
)

if ! command -v brew > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if ! command brew ls --versions cask > /dev/null; then
  brew install cask
fi

brew cask install \
  docker \
  postman \
  iterm2 \
  caffeine \
  dropbox \
  firefox \
  slack \
  spotify \
  alfred \
  openoffice \
  google-chrome \
  macdown \
  cyberduck \
  visual-studio-code \
  sublime-text \
  java8 \
  vlc \
  ngrok
  
brew install \  
  dos2unix \
  git \
  node \
  yarn \
  awscli \
  jq \
  docker-machine \
  imagemagick \
  mcrypt \
  openssl \
  python3 \
  redis \
  ssh-copy-id \
  wget \
  htop \
  aircrack-ng \
  coreutils \
  elasticsearch \
  go \
  rbenv \
  yarn \
  sass/sass/sass \
  gpg \
  ack \
  scala \
  sbt \
  flyway \
  tree \
  pipenv \
  tmux \
  parallel \
  watchman

npm install -g sass
npm install -g gulp-cli
npm install -g create-react-app

pushd $HOME
for folder in "${root_folders[@]}"
do
  if [[ ! -d $folder ]]; then
    mkdir $folder
  fi
done
popd $HOME

pushd $HOME/Workspace
for folder in "${workspace_folders[@]}"
do
  if [[ ! -d $folder ]]; then
    mkdir $folder
  fi
done
popd

pushd $HOME/Workspace/projects
for folder in "${project_folders[@]}"
do
  if [[ ! -d $folder ]]
  then
    mkdir $folder
  fi
done
popd

unset -f pushd
unset -f popd
