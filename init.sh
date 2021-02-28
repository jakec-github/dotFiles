#!/bin/bash

DOT_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

########## Vim

# Links vimrc
ln -sf $DOT_FILES_DIR/vimrc ~/.vimrc

# Creates plugins directories
mkdir -p ~/.vim/pack/plugins/start
mkdir -p ~/.vim/pack/plugins/opt

echo "Reading now"

# Installs packages from manifest at ./vim/plugins.txt
while read -r line || [[ -n "$line" ]]; do
  LINE_AS_ARRAY=($line)

  NAME=${LINE_AS_ARRAY[0]}
  RESOLVED_BY=${LINE_AS_ARRAY[1]}
  LOAD_TYPE=${LINE_AS_ARRAY[2]}
  REPO_FOLDER=${LINE_AS_ARRAY[3]}
  LOCATION=~/.vim/pack/plugins/${LOAD_TYPE}/${NAME}

  if [ ! -d $LOCATION ] ; then
    git clone $RESOLVED_BY $LOCATION
  fi

  if [[ ! -z "$REPO_FOLDER" ]] ; then
   mv ~/.vim/pack/plugins/${LOAD_TYPE}/${NAME}/${REPO_FOLDER}/* ~/.vim/pack/plugins/${LOAD_TYPE}/${NAME}/
  fi

done < $DOT_FILES_DIR/vim/plugins.txt
#########
