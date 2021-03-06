
# config git
#
##### 

echo "INFO: setting git..."

# Set git to use the osxkeychain credential helper
git config --global credential.helper osxkeychain

# Set merge tool to vscode
git config --global merge.tool vscode
git config --global mergetool.vscode.cmd "code --wait $MERGED"
git config --global diff.tool vscode
git config --global difftool.vscode.cmd "code --wait --diff $LOCAL $REMOTE"

# Setup user name and email
git config --global user.name "Shaung Cheng"
git config --global user.email shaungc@umich.edu





# software installation
#
#####

# install brew. See https://brew.sh
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# GUI
brew tap caskroom/cask
brew cask install google-chrome visual-studio-code google-drive-file-stream wechat

# optional GUI
brew cask install slack

# CLI
# for now, install just python 3.6 instead of 3.7
# brew install python3 
brew install \
https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb \
node

# install angular-cli
npm install -g @angular/cli