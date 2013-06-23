## What is myzsh?
This is the set of scripts I use for my zsh prompt, a configuration framework for myzsh, if you will.

## Screenshots
One of many themes
````
┌─(/tmp)────────────────────────────────────────────────(wlan0:10.42.0.xx/24)─┐
└─(18:07:05)─                                                     ─(06/22/13)─┘
````

## Installation
First, clone git and enter a demo mode.
````bash
git clone https://github.com/brimstone/zsh $HOME/.myzsh
ZDOTDIR=$HOME/.myzsh/demo zsh -i
````

If you don't like myzsh, just `rm -rf $HOME/.myzsh`

If you do however, run `myzsh persistant` and `myzsh save` and you're good to go!

## Configuring
Enabling a module is as easy as adding it to the array where you want it to show up. LPRIMARY is all of the modules that show show up on the top left prompt line. Some themes may not use the LSECONDARY and RSECONDARY, they should handle this gracefully.
