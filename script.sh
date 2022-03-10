


# create directory for stuffs
RESOURCE_DIR=$(echo $HOME/.zsh_resources)

if [ ! -d $RESOURCE_DIR ]
then
	echo Creating resource directory $RESOURCE_DIR
	mkdir $RESOURCE_DIR
fi

echo $RESOURCE_DIR/sobole.zsh-theme

# Sobole theme

THEME_DIR="sobole-zsh-theme"
THEME_NAME="sobole.zsh-theme"


if [ ! -d $(echo $RESOURCE_DIR/$THEME_DIR) ]
then
	echo Cloning theme into resource dir
	git clone https://github.com/sobolevn/sobole-zsh-theme.git $(echo $RESOURCE_DIR/$THEME_DIR)
fi

# if theme doesn't exist add it
if [ ! -d $(echo $ZSH_CUSTOM/themes/$THEME_NAME) ]
then
	echo Creating symbolic link to theme into oh my zsh
	ln -s $(echo $RESOURCE_DIR/$THEME_DIR/$THEME_NAME) $(echo $ZSH_CUSTOM/themes/$THEME_NAME)
fi

if [ ! -d $(echo $ZSH_CUSTOM/plugins/zsh-syntax-highlighting) ]
then
	echo Installing zsh-syntax-autocompletions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -d $(echo $ZSH_CUSTOM/plugins/zsh-autosuggestions) ]
then
	echo Installing zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi



# if on mac, install homebrew

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile









