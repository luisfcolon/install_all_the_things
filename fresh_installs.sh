if ! command -v brew > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install cask

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
  homebrew/cask-versions/java8 \
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
  sass/sass/sass
  
npm install -g sass
npm install -g gulp-cli
npm install -g create-react-app
