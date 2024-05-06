#!/bin/bash

DIR=$HOME/.mixxx/controllers/
mkdir -p $DIR
ln -s Ableton-Push.midi.xml $DIR/Ableton-Push.midi.xml
ln -s Ableton-Push-scripts.js $DIR/Ableton-Push-scripts.js
echo "Files linked into '$DIR'"

