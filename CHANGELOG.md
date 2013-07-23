##v1.0.1
### New Feature 
* Add custom directory support for modules, themes, and completions. 
* New history module to share history among other sessions.
* Added TITLE to enable/disable/save
* Make backup of .zshrc if it exists and isn't part of myzsh.

### Bug Fixes
* Correctly display hex mask in ipaddr module. 
* Check and error if info.md doesn't exist in module.
* Created globals for upcoming myzsh set command in alwaystmux. Cleaned up the way we remove extra tmux sessions.
* Created globals for upcoming myzsh set command alwaysscreen.
* Fix for :: going into an infinite loop.
* Fix for :: unknown commands looping.

<!---
Kind of used this line
`git log 1.0.0.. --pretty=format:'[%h](http://github.com/brimstone/myzsh/commit/%H) - %s' --reverse`
-->

