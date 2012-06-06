#!/bin/zsh
cd ~/git ; 
echo ":::: Updated cloned git repositories ::::" ;
for i in * ;
do if [ -d $i ] ;
    then echo "::: Directory $i :::" ;
        cd $i ;
        git pull ;
        sleep 2; 
    fi 
    cd ~/git/;
done ;
# updating macports
echo "::: Updating macports :::"
sudo port selfupdate;
sudo port upgrade outdated;
## updating brews 
echo "::: Updating brews :::"
brew update && brew upgrade && brew cleanup ; 
## emacs from trunk 
echo "::: Updating emacs from trunk :::"
cd ~/Documents/save_documents/Documents/temp/emacs/emacs ; 
git pull ;
sh autogen.sh ; 
sleep 50 ;
./configure --with-ns --without-compress-info --without-imagemagick ;
make ;
## make install doesn't work see the issue https://lists.gnu.org/archive/html/emacs-devel/2012-02/msg00643.html
make clean bootstrap install ;
mv /Applications/Emacs.app ~/.Trash/ ;
mv ./nextstep/Emacs.app /Applications/ ;
if [ -d  "/Applications/Emacs.app/Contents" ] ;
then echo "::: Compiling .elc's :::" ;
    echo ":: Removing locally compiled .el configs ::";
    rm -rfv ~/.emacs.d/*.elc ;
    rm -rfv ~/.emacs.d/*/*.elc ;
    rm -rfv ~/.emacs.d/*/*/*.elc ;
    echo ":: Compiling lokaal .el configs ::";
    cd  ~/.emacs.d && /Applications/Emacs.app/Contents/MacOS/Emacs --batch --no-site-file --eval '(byte-recompile-directory "~/.emacs.d" 0 t)' ; 
    echo ":: Removing locally compiled .el configs for helm ::";
    rm -rfv  ~/git/helm/*.elc ;
    rm -rfv  ~/git/helm/*/*.elc ;
    echo ":: Compiling locally .el helm configs ::";
    cd ~/git/helm && /Applications/Emacs.app/Contents/MacOS/Emacs --batch --no-site-file --eval '(byte-recompile-directory "~/git/helm" 0 t)' ; 
    echo ":: Removing locally compiled .el configs for egg ::";
    rm -rfv  ~/git/egg/*.elc ;
    rm -rfv   ~/git/egg/*/*.elc ;
    echo ":: Compiling locally .el egg configs ::";
    cd ~/git/egg/ && /Applications/Emacs.app/Contents/MacOS/Emacs --batch --no-site-file --eval '(byte-recompile-directory "~/git/egg" 0 t)'
fi ;
