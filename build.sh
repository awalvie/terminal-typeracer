DIRECTORY="build"
PROJECT_NAME="terminal_racer"

if [ ! -d $DIRECTORY ]; then
    mkdir $DIRECTORY
fi

cd $DIRECTORY

# execution

cmake ..
make
./$PROJECT_NAME