#!/bin/sh

engineibus=$(ibus engine)

if [ "$engineibus" == 'Bamboo' ]
then
    echo "ﱃ Bamboo"
else
    echo "ﱃ English"
fi
