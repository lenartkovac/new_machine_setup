NVIM_CONFIG_DIR=$HOME/.config/nvim
if [ ! -d NVIM_CONFIG_DIR ] 
then
    echo $NVIM_CONFIG_DIR does not exist; creating directory 
    mkdir $NVIM_CONFIG_DIR
fi

echo copy nvim init file to the nvim config dir

if [ -f $NVIM_CONFIG_DIR/init.vim ]
then
    echo removing current init.vim
    rm $NVIM_CONFIG_DIR/init.vim
fi

echo copying file from resources folder to $NVIM_CONFIG_DIR
cp resources/init.vim $NVIM_CONFIG_DIR

