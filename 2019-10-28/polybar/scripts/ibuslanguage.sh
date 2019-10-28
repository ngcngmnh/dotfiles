#!/bin/bash

engineibus=$(ibus engine)
echo "haha";
if [[ $engineibus == "Bamboo" ]]; then
    echo "vn";
#elif [ $engine == "mozc-jp" ]; then
#    echo "jp";
else
    echo "en";
fi
