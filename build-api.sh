#!/bin/bash

cd DiceRoller
dotnet restore
dotnet publish -c Release -o build
cd ..

echo
echo ------------------------------------------
echo
echo yay!
