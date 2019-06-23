#!/usr/bin/env bash
#ravikiran
#echo " Coursera The Unix Workbench peer-graded assignment "
function startguess {
  echo "Hi there guess how many files in current directory! "
  read  guess
  files=("$(ls -l | grep ^- |wc -l)")
  diff="$(($guess - $files))"
}

while true
  do
    startguess
    if [[ $diff -eq  0 ]]; then
      echo " your guess $guess is correct"
      break
    elif [[ $diff -lt 0 ]]; then
      echo " your guess $guess is too low "
    elif [[ $diff -gt 0 ]]; then
      echo " your guess $guess is too high "
    fi
done
