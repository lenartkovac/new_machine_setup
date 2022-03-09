


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

if [ ! -d $(echo $HOME/.oh-my-zsh/custom/themes/$THEME_NAME) ]
then
	echo Creating symbolic link to theme into oh my zsh
	ln -s $(echo $RESOURCE_DIR/$THEME_DIR/$THEME_NAME) $(echo $HOME/.oh-my-zsh/custom/themes/$THEME_NAME)
fi
