#!/bin/bash
#Preferences to be set when configuring a new computer

# Configuring Dock autohide
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock
