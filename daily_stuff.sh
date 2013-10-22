#!/bin/zsh
# updating macports
echo "::: Updating macports :::"
#sudo port -v selfupdate;
#sudo port -v upgrade outdated;
cd ~/git ; 
echo ":::: Updated cloned git repositories ::::" ;
for i in * ;
do if [ -d $i ] ;
    then echo "::: Directory $i :::" ;
        cd $i ;
        git smart-pull ;
	git gc --auto;
        sleep 2; 
        cd .. ;
    fi 
done ;
## updating brews 
echo "::: Updating brews :::"
brew -v update && brew -v upgrade && brew -v cleanup && brew -v prune && brew -v doctor
##brew update && brew upgrade && brew cleanup && brew prune && brew doctor; 
## emacs from trunk 
##echo "::: Updating emacs from trunk :::"
# Emacs is now installed with brews, the previous process will update emacs
# brew install emacs --cocoa --use-git-head --HEAD
# cd ~/Documents/save_documents/Documents/temp/emacs/emacs ; 
# git pull ;
# sh autogen.sh ; 
# sleep 50 ;
# ./configure --with-ns --without-compress-info --without-imagemagick ;
# make ;
# make install
# ## doesn't work see the issue https://lists.gnu.org/archive/html/emacs-devel/2012-02/msg00643.html
# ## make clean bootstrap install ;
# if [ -d  "~/.Trash/Emacs.app" ] ;
# then echo "::removing unnused Emacs from trash::"
#     rm -rfv ~/.Trash/Emacs.app;
# fi;
# mv /Applications/Emacs.app ~/.Trash/ ;
# mv ./nextstep/Emacs.app /Applications/ ;
echo "::: Compiling .elc's :::" ;
if [ -d  ~/.emacs.d/ ] ;
then echo ":: Removing old compiled .el configs ::" ;
    cd ~/.emacs.d/ && find . -type f -name "*.elc" -exec rm -fv {} \;
    echo ":: Compiling lokaal .el configs ::" ;
    cd  ~/.emacs.d && ~/Applications/Emacs.app/Contents/MacOS/Emacs --batch --no-site-file --eval '(byte-recompile-directory "~/.emacs.d" 0 t)' ; 
fi ;
echo "::: Done batchcompiling local elc's :::" ;
