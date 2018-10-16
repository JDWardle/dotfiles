# bash
I use bash for my shell. All of my settings I put in my `.bash_profile` dotfile.

## Bash completion
Install bash completion with brew `brew install bash-completion` follow the
instructions returned by the command.

# .vimrc
I use https://github.com/amix/vimrc for my .vimrc file. My specific settings
can be seen in my fork at https://github.com/JDWardle/vimrc.

# Visual Studio Code
I have included my Visual Studio Code settings under the `vscode` directory.
The location these files should be stored in differs from OS to OS. See https://code.visualstudio.com/docs/getstarted/settings#_settings-file-locations
for the OS specific locations.

# Git

## .gitexcludes
In order to use the excludes file you must run this command:
```
git config --global core.excludesfile ~/.gitexcludes
```

## Bash completion
In order for bash completion to work easily install git with `brew install git`
and then install `brew install bash-completion`.
If you don't install git with brew you'll have to manually copy the `git-completion.bash`
file from the location that your git is installed to.

