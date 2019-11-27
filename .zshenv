# Path
typeset -u path
path=($DEVKITARM/bin $HOME/.node_modules/bin $HOME/.local/bin $HOME/.cargo/bin /opt/mxe/usr/bin $HOME/dev/go/bin $(ruby -e 'print Gem.user_dir')/bin $path[@])
# Exports
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

#android dev vars
export AR_aarch64_linux_android="$ANDROID_HOME/toolchains/android21-aarch64/bin/aarch64-linux-android-ar"
export AR_armv7_linux_androideabi="$ANDROID_HOME/toolchains/android21-armv7/bin/arm-linux-androideabi-ar"
export AR_x86_64_linux_android="$ANDROID_HOME/toolchains/android21-x86_64/bin/x86_64-linux-android-ar"
export AR_i686_linux_android="$ANDROID_HOME/toolchains/android21-i686/bin/i686-linux-android-ar"
export CC_aarch64_linux_android="$ANDROID_HOME/toolchains/android21-aarch64/bin/aarch64-linux-android21-clang"
export CC_armv7_linux_androideabi="$ANDROID_HOME/toolchains/android21-armv7/bin/armv7a-linux-androideabi21-clang"
export CC_x86_64_linux_android="$ANDROID_HOME/toolchains/android21-x86_64/bin/x86_64-linux-android21-clang"
export CC_i686_linux_android="$ANDROID_HOME/toolchains/android21-i686/bin/i686-linux-android21-clang"

source ~/.secenv
