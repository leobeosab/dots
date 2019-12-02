SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

echo "Creating .vim/autoload and .vim/bundle dirs"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \

echo "Downloading pathogen"
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle

while read giturl; do
    echo "Cloning $giturl"
    git clone $giturl
done < $SCRIPTPATH/vimplugins
