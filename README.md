## What is myzsh?
This is the set of scripts I use for my zsh prompt.

## Screenshots
┌─(/tmp)────────────────────────────────────────────────(wlan0:10.42.0.xx/24)─┐
└─(18:07:05)─                                                     ─(06/22/13)─┘

## Installation
Installing is as easy as:
    git clone https://github.com/brimstone/zsh $HOME/.myzsh
    ZDOTDIR=$HOME/.myzsh/demo zsh -i

## Configuring
Enabling a module is as easy as adding it to the array where you want it to show up. LPRIMARY is all of the modules that show show up on the top left prompt line. Some themes may not use the LSECONDARY and RSECONDARY, they should handle this gracefully.
