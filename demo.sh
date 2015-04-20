#!/bin/sh

echo
echo "Setup: restore everything to a clean starting state"
git reset --hard HEAD
redo clean

echo
echo "First we build fred.cmo."
redo-ifchange fred.cmo

echo
echo "Now we build it again. Nothing should happen."
redo-ifchange fred.cmo

echo
echo "Now we add a dependency on Wilma, and rebuild fred.cmo."
cp fred2.ml fred.ml
redo-ifchange fred.cmo

echo
echo "Finally we build an executable, because we've come this far already."
redo-ifchange flintstones
