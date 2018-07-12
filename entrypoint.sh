#!/bin/bash -eux

if [ "$INITIALISE" -eq "1" ]
then
    echo "installing yarn..."
    yarn install
    echo "yarn installed."
    
    echo "installing gulp"
    cd semantic
    npm install gulp -g
    echo "gulp installed"
    cd ..
fi

# To run "gulp watch" docker exec -it tw2_www_1 ash

echo "starting yarn..."
yarn start
