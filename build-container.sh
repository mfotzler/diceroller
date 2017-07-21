#!/bin/bash
build_number=`date +%s`

cd DiceRoller
dotnet restore
dotnet publish -c Release -o build
cd ..
docker build -t diceroller:$build_number .
docker tag diceroller:$build_number diceroller:latest
mkdir -p build


echo
echo ------------------------------------------
echo
echo yay!
