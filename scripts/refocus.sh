#!/bin/bash

set -eu -o pipefail

function fin {
  echo "trap"
  sudo blink1-tool --green
}
trap fin EXIT

sleep_len=1800
if (( $# == 1 ))
then
  sleep_len=$(( $1*60 ))
fi

sudo blink1-tool --red
figlet -f lean  'FOOOCCUUUSSS!'
echo "Start date: `date`"
sleep "$sleep_len"
sudo blink1-tool --green
while true 
do
  flite 'Focus Time Up!'
  sleep 2
done
