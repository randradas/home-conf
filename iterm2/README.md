# Install Homebrew
```sh
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

# Install iTerm2
```sh
$ brew cask install iterm2
```

# Install ZSH
```sh
$ brew install zsh
```

# Install Oh My Zsh!
The following command will try to set ZSH as default shell.
```sh
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
Remember, at this point ZSH should be your default shell.

## Upgrade Oh My Zsh!
```sh
$ upgrade_oh_my_zsh
```

## Change default Oh My Zsh! theme
```sh
$ vim ~/.zshrc
```
![Change theme](/iterm2/doc/changetheme.png)

## Load changes
```sh
$ source ~/.zshrc
```

# Install fonts
```sh
$ cd /tmp/
$ git clone https://github.com/powerline/fonts.git
$ cd fonts
$ ./install.sh
```
To change the font, navigate to iTerm2 > Preferences > Profiles > Text > Change
Font. Select 'Inconsolata for Powerline' font.

Now, you can see Inconsolata listed as one of the fonts. Select your preferred
font. For fonts that support ligatures like FiraCode, check the “Use ligatures”
option to view your arrows and other operators in a stylish manner like ( → ).

# Install color scheme
Use [Solarized](https://ethanschoonover.com/solarized/):
1. Download Solarized [here](http://ethanschoonover.com/solarized/files/solarized.zip)
2. Unzip it
3. Navigate to iTerm2 > Preferences > Profiles > Colors > Color Presets > Import...
4. Go to the previous unzipped folder and select the color scheme for iTerm2:

![Color scheme](/iterm2/doc/colorscheme.png)

5. Navigate to iTerm2 > Preferences > Profiles > Colors > Color Presets > Solarized Dark

# Install Oh My Zsh! plugins
```
$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
$ vim ~/.zshrc
..
plugins=(
    git
    zsh-autosuggestions
)
..
```
