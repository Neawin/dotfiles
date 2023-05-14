if status is-interactive
    # Commands to run in interactive sessions can go here
end

#zoxide 
zoxide init fish | source

#starship
starship init fish | source

#NVM
nvm use latest

#Aliases
alias ll="exa -l --icons"
alias lla="exa -l -a --icons"
alias vim="nvim"
alias bat="batcat"
alias g="git"
alias gst="git status"

#Fzf
fzf_configure_bindings --directory=\cf

set -gx CAPACITOR_ANDROID_STUDIO_PATH /opt/android-studio/bin/studio.sh
set -gx ANDROID_SDK_ROOT $HOME/Android/Sdk
#PATH
fish_add_path $ANDROID_SDK_ROOT/platform-tools
fish_add_path $ANDROID_SDK_ROOT/emulator
fish_add_path $ANDROID_SDK_ROOT/tools/bin



