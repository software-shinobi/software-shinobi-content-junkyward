
function @mari-development () {

  reset

  clear

  pkill -9 chrome

  pkill -9 npm

  pkill -9 firefox

  pkill -9 dolphin

  cd ~/programme-noire/mari-lastname

  ls -l

  atom .

  nohup open . &
}

function @git-full-reset () {

  git clean --force && git reset --hard

}

function @git-automated-add-push-origin () {

  reset;

  clear;

  git status;

  git add .;

  git commit -m "automated git add and push";

  git push origin;

  echo

  echo " ** Git Project Updated ** "
  echo

  echo " Thank you. And Enjoy. "
  echo

  echo " Namaste. May The Gods be with you. "
  echo

}

alias bpn="atom ~/.bashrc-programme-noire/"

alias r="reset;"

alias rc="reset;clear;"


## quick navigations

## go to

function nav-tmp () {

  reset

  clear

  targetDirectory="/tmp/programme-noire-tmp-"$RANDOM

  mkdir $targetDirectory

  cd $targetDirectory

  echo

  echo "   you are now in the temporary directory: "

  echo

  echo "      [ "$targetDirectory" ] "

  echo

  echo "   Namaste. "

  echo

}

function @programme-noire-files-create-and-enter-directory () {

  targetDirectory=$1

  mkdir $targetDirectory

  cd $targetDirectory

  reset

  clear

  echo
  echo "   the directory [ "$targetDirectory" ] has been created."

  echo
  echo "   you are now in that directory. enjoy"

  echo

}

alias emkdir="@programme-noire-files-create-and-enter-directory"

function @programme-noire-project-initialize () {

## clean terminal output

  reset

  clear

## create the directory structure

  mkdir recycle-bin

  mkdir internet-technology

  mkdir project-internal

  mkdir project-external

## pull down the markdown templates

git clone https://github.com/softwareshinobi/project-management-templates-markdown

mv project-management-templates-markdown project-management

cd project-management
rm -rf .git/
cd ..

## create important local files

echo

echo "Enjoy. Namaste."

echo

}
