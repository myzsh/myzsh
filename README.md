## What is myzsh?
This is the set of scripts I use for my zsh prompt, a configuration framework for myzsh, if you will.

## Why myzsh?
I first started of with [phil's prompt](http://aperiodic.net/phil/prompt/). After using and tweaking it for a few years, I found oh-my-zsh. I don't like how they handled themes and plugins, so after a glorious night of hacking, I developed my own framework. I hope you like it. :)

## Screenshot
![OS X](http://brimstone.github.io/myzsh/screenshot.1.osx.png)

## Installation
First, clone git and enter a demo mode.
````bash
git clone https://github.com/brimstone/myzsh $HOME/.myzsh
ZDOTDIR=$HOME/.myzsh/demo zsh -i
````
If you don't like myzsh, just `rm -rf $HOME/.myzsh`

If you do however, run `myzsh persistent` and `myzsh save` and you're good to go!

If you think you know what you're doing and just want to jump right in, change your shell
````bash
chsh -s $(which zsh)
````
Copy in one of the sample configs
````bash
cp $HOME/.myzsh/samples/zshrc.default $HOME/.zshrc
````

## Configuring
Enabling a module is as easy as adding it to the array where you want it to show up. `LPRIMARY` is all of the modules that show show up on the top left prompt line. Some themes may not use the `LSECONDARY` and `RSECONDARY`, they should handle this gracefully.
````bash
myzsh enable lprimary git
````

Disabling, just as easy:
````bash
myzsh disable git
````

Don't forget to save if you like your changes:
````bash
myzsh save
````

Also, you could directly edit your `$HOME/.zshrc` if you wanted.

## Writing a Module
Modules simply need to be in a directory with their name, in either the `$MYZSH/modules` or `$MYZSH/remotes/$remote_name/modules` directory.

The most simple module would simply define a function and echo something to standard out:
````bash
function my_module {
	echo "Hello World"
}
OUTPUT=my_module
````
The `OUTPUT` variable is defined to be the name of the function that needs to be called for your module. If you have any other setup logic, that can go pretty much anywhere in this file as well. It will only be sourced once.

## Writing a Theme
At the bare minimum, your theme must to define the function `theme_prompt` and in that define the `PROMPT` and `RPROMPT` variables. Your theme should also run each function defined in the `lp_funcs`, `ls_funcs`, `rp_funcs`, and `rs_funcs` array, placing the output from those functions in the proper spots around the prompt. Theme files follow the same naming convention but go in the `themes` directory inside `$MYZSH`
