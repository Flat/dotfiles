# Exports
export ANDROID_SDK_ROOT=/opt/android-sdk
export CHROOT=$HOME/dev/chroot
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPRO=/opt/devkitpro
export EDITOR='code -n -w'
export LANG=en_US.UTF-8
export LIBVIRT_DEFAULT_URI="qemu:///system"
export MPD_HOST=/home/flat/.config/mpd/socket
export npm_config_prefix=~/.node_modules
export QT_QPA_PLATFORMTHEME=gtk2
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export WINEPREFIX=/media/HAPPYFUNTIMES/.wine
export WORKON_HOME=~/.virtualenvs
export ZSH_TMUX_AUTOSTART=true
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export GOPATH=~/dev/go
source ~/.secenv
# Path
typeset -u path
path=($DEVKITARM/bin $HOME/.node_modules/bin $HOME/.local/bin $HOME/.cargo/bin /opt/mxe/usr/bin $HOME/dev/go/bin $(ruby -e 'print Gem.user_dir')/bin $ANDROID_SDK_ROOT/emulator $ANDROID_SDK_ROOT/build-tools/29.0.2 /usr/local/bin $path[@])
