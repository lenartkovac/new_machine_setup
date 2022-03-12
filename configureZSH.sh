#!/bin/zsh
THEME_NAME="sobole.zsh-theme"

# OH MY ZSH

echo "Oh my Zsh"
if [ ! -d $HOME/.oh-my-zsh ]
then
	echo -e "\t- Installing Oh My Zsh!"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo -e "\t- DONE"
else
	echo -e "\t- Oh My Zsh is Already installed"
fi

# ZSH_CUSTOM_DEFAULT=$( echo $HOME/.oh-my-zsh/custom)
ZSH_CUSTOM_DEFAULT=$HOME/.oh-my-zsh/custom
ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH_CUSTOM_DEFAULT}

# Sobole theme

echo "Installing theme "$THEME_NAME
if [ ! -d $ZSH_CUSTOM/themes/$THEME_NAME ]
then
	echo -e "\t- Copying theme from resources to zsh custom"
	cp ./resources/$THEME_NAME $ZSH_CUSTOM/themes
	echo -e "\t- DONE"
else
	echo -e "\t- Theme already installed"
fi

echo "Installing zsh-syntax-autocompletions"
if [ ! -d $(echo $ZSH_CUSTOM/plugins/zsh-syntax-highlighting) ]
then
	echo -e "\t- Cloning zsh-syntax-autocompletions repo to zsh custom"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else
	echo -e "\t- Plugin already installed"
fi

echo "Installing zsh-autosuggestions"
if [ ! -d $(echo $ZSH_CUSTOM/plugins/zsh-autosuggestions) ]
then
	echo -e "\t- Cloning zsh-autosuggestions repo to zsh custom"
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
	echo -e "\t- Plugin already installed"
fi

echo ".zshrc file"
echo -e "\t- Copying .zshrc"
cp -f ./resources/.zshrc $HOME
echo -e "\t- DONE"