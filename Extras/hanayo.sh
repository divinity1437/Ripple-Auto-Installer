#!/bin/bash
clear

# Updating Is Necessary (at first)
sudo apt-get update && sudo apt-get update -y
sudo apt-get install git -y
sudo add-apt-repository ppa:longsleep/golang-backports -y
sudo apt-get update
sudo apt-get install golang-go -y
sudo apt-get update && sudo apt-get update -y

# Setting GO Path
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export PATH=${PATH}:${GOPATH}/bin' >> ~/.bashrc
source ~/.bashrc

# Cloning Hanayo (from zxq.co), github?;old
sudo go get -u zxq.co/ripple/hanayo
cd go/src/zxq.co/ripple/hanayo
sudo go build .

# Make Sure to press "enter" and type "I agree" (hanayo licence agreement)
./hanayo
clear
./hanayo
