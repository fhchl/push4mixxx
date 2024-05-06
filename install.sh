#!/bin/bash

DIR=$(realpath $HOME/.mixxx/controllers/)
mkdir -p $DIR
ln -sf "$(realpath Ableton-Push.midi.xml)" "$DIR/Ableton-Push.midi.xml"
ln -sf "$(realpath Ableton-Push-scripts.js)" "$DIR/Ableton-Push-scripts.js"
echo "Files linked into '$DIR'"

