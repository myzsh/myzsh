## What is myzsh?
This is the set of scripts I use for my zsh prompt, a configuration framework for myzsh, if you will.

## Why myzsh?
I first started of with phil's prompt.[1] After using and tweaking it for a few years, I found oh-my-zsh. I don't like how they handled themes and plugins, so after a glorious night of hacking, I developed my own framework. I hope you like it. :)

1: http://aperiodic.net/phil/prompt/

## Screenshots
One of many themes
````
┌─(/tmp)────────────────────────────────────────────────(wlan0:10.42.0.xx/24)─┐
└─(18:07:05)─                                                     ─(06/22/13)─┘
````

## Installation
First, clone git and enter a demo mode.
````bash
git clone https://github.com/brimstone/myzsh $HOME/.myzsh
ZDOTDIR=$HOME/.myzsh/demo zsh -i
````
If you don't like myzsh, just `rm -rf $HOME/.myzsh`

If you do however, run `myzsh persistant` and `myzsh save` and you're good to go!

If you think you know what you're doing and just want to jump right in, change your shell
````bash
chsh -s $(which zsh)
````
Copy in one of the sample configs
````bash
cp $HOME/.myzsh/samples/zshrc.brimstone $HOME/.zshrc
````

## Configuring
Enabling a module is as easy as adding it to the array where you want it to show up. LPRIMARY is all of the modules that show show up on the top left prompt line. Some themes may not use the LSECONDARY and RSECONDARY, they should handle this gracefully.
