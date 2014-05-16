#!/bin/bash

chsh -s /bin/zsh

for file in .*; do
	ln -s `pwd`/$file ~/
done
