## 1.4.0
### New Features
* Battery module to provide battery percentage and details to myzsh prompt
* myzsh update now updates myzsh and remotes if they are in svn or git

### Bug Fixes
* Found some errors with out `myzsh set` operates

## 1.3.0
### New Features
* Added description and module to `myzsh set` information
* Added variable for current version. Closes Issue #26
* Forgot the `myzsh version` command. Now Issue #26 can be closed
* Manual merge of new helper function branch
* markeddowned the readme a bit more, added a screenshot
* Missed a few variables
* Updated documentation about using and developing for myzsh a bit
* Adding descriptions to global variables
* Fixed link at the bottom of help
* Added helper functions, debug, warning and error
* Added license
* Moved autoloading to the main script
* New format for jobs module

### Bug Fixes
* Issue #20: Finally added a way to simply edit .zshrc from anywhere Bug fix: Fixed case statement from last commit
* You can no longer enable modules that don't exist

## 1.2.0
### New Features
* `myzsh set` to set global variables like TMPDIR. Don't forget to `myzsh save`!
* `myzsh theme` to set a new theme.
* Multiple cleanup and reformatting of functions.
 
### Bug Fixes
* Fixed issue with alwaystmux key bind to last-window.
* Multiple compatibility improvements for OSX. 

## 1.1.0
### New Features
* Add custom directory support for modules, themes, and completions.
* New history module to share history among other sessions.
* Added TITLE to enable/disable/save
* Make backup of .zshrc if it exists and isn't part of myzsh.
* Added branch icon and stash to git module.
* Added changelog.

### Bug Fixes
* Correctly display hex mask in ipaddr module.
* Check and error if info.md doesn't exist in module.
* Created globals for upcoming myzsh set command in alwaystmux. Cleaned up the way we remove extra tmux sessions.
* Created globals for upcoming myzsh set command alwaysscreen.
* Fix for :: going into an infinite loop.
* Fix for :: unknown commands looping.

<!---
Kind of used this line
`git log $(git tag -l | sort -rn | head -n 1).. --pretty=format:'[%h](http://github.com/brimstone/myzsh/commit/%H) - %s' --reverse | sed -e 's/^.* - //' | sort`
-->

