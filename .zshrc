# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    extract
    autojump
    emoji
    alias-finder osx brew
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

###############################################################################
# system setting
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export DYLD_LIBRARY_PATH=.:/usr/local/lib:/usr/local/lib64
export LANG="en_US.UTF-8"
alias rm="safe-rm"
alias pc="proxychains4"
alias spc="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"

# man page highlight
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export OPENSSL_ROOT_DIR="/usr/local/opt/openssl"
export OPENSSL_LIBRARIES="/usr/local/opt/openssl/lib"
export OPENSSL_INCLUDE_DIR="/usr/local/opt/openssl/include"
# export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
    
# openjdk
export PATH="/usr/local/opt/openjdk/bin:$PATH"
# export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# luarocks
export PATH="/Users/mason/.luarocks/bin:$PATH"

# pub
export PATH="$PATH":"$HOME/.pub-cache/bin"

# ffmpeg dependency guile
export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"

# ffmpeg dependency gnutls
export GUILE_TLS_CERTIFICATE_DIRECTORY=/usr/local/etc/gnutls/

# crosstool-ng dependency: binutils
export PATH="/usr/local/opt/binutils/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/binutils/lib"
# export CPPFLAGS="-I/usr/local/opt/binutils/include"

# crosstool-ng dependency: bison
export PATH="/usr/local/opt/bison/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/bison/lib"

# libffi
# export LDFLAGS="-L/usr/local/opt/libffi/lib"
# export CPPFLAGS="-I/usr/local/opt/libffi/include"
# export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# crosstool-ng dependency: coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# crosstool-ng dependency: flex
export PATH="/usr/local/opt/flex/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/flex/lib"
# export CPPFLAGS="-I/usr/local/opt/flex/include"

# crosstool-ng dependency: gnu-sed
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# crosstool-ng dependency: grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# crosstool-ng dependency: m4
export PATH="/usr/local/opt/m4/bin:$PATH"

# crosstool-ng dependency: ncurses
export PATH="/usr/local/opt/ncurses/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/ncurses/lib"
# export CPPFLAGS="-I/usr/local/opt/ncurses/include"
# export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

# libpcap
export PATH="/usr/local/opt/libpcap/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/libpcap/lib"
# export CPPFLAGS="-I/usr/local/opt/libpcap/include"
# export PKG_CONFIG_PATH="/usr/local/opt/libpcap/lib/pkgconfig"

# qt5
export PATH="/usr/local/opt/qt@5/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/qt@5/lib"
# export CPPFLAGS="-I/usr/local/opt/qt@5/include"
# export PKG_CONFIG_PATH="/usr/local/opt/qt@5/lib/pkgconfig"

# openblas
# export LDFLAGS="-L/usr/local/opt/openblas/lib"
# export CPPFLAGS="-I/usr/local/opt/openblas/include"
# export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig"

# ndk
export ANDROID_NDK_HOME="/usr/local/share/crystax-ndk"
# export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

# ccache
export PATH="/usr/local/opt/ccache/libexec:$PATH"

# mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/mysql-client/lib"
# export CPPFLAGS="-I/usr/local/opt/mysql-client/include"

# sqlite
export PATH="/usr/local/opt/sqlite/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/sqlite/lib"
# export CPPFLAGS="-I/usr/local/opt/sqlite/include"
# export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# icu4c
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
# export LDFLAGS="-L/usr/local/opt/icu4c/lib"
# export CPPFLAGS="-I/usr/local/opt/icu4c/include"
# export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

# QtIFW
export PATH="/Users/mason/Qt/QtIFW-4.0.1/bin:$PATH"

# ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/ruby/lib"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"
# export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# luajit-openresty
export PATH="/usr/local/opt/luajit-openresty/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/luajit-openresty/lib"
# export CPPFLAGS="-I/usr/local/opt/luajit-openresty/include"
# export PKG_CONFIG_PATH="/usr/local/opt/luajit-openresty/lib/pkgconfig"

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/llvm/lib"
# export CPPFLAGS="-I/usr/local/opt/llvm/include"

# spacevim
export PATH="$PATH:$HOME/.SpaceVim/bin"

# docbook
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

# gnu-getopt
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

# esp
# . $HOME/esp/esp-idf/export.sh
alias esp-idf=". $HOME/esp/esp-idf/export.sh"
alias esp-mdf=". $HOME/esp/esp-mdf/export.sh"
alias esp-adf=". $HOME/esp/esp-idf/export.sh && export ADF_PATH=~/esp/esp-adf"
alias esp-8266="export IDF_PATH=~/esp/ESP8266_RTOS_SDK"
export PATH="/Users/mason/esp/xtensa-lx106-elf/bin:$PATH"


# Add environment variable NDK_ROOT for cocos2d-x  
export NDK_ROOT=$ANDROID_NDK_HOME
export PATH=$NDK_ROOT:$PATH  

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x  
export ANDROID_SDK_ROOT=/Users/mason/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH  
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH  

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT="/Users/mason/cocos2d-x-4.0/tools/cocos2d-console/bin"
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT="/Users/mason/cocos2d-x-4.0/templates"
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT="/Users/mason"
export PATH=$COCOS_X_ROOT:$PATH
