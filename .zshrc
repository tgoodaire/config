autoload -U compinit
compinit

autoload -U colors
colors

zmodload zsh/complist

setopt APPEND_HISTORY
setopt histignoredups
setopt all_export
setopt auto_pushd
setopt chase_dots
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_no_store
setopt pushd_ignore_dups
setopt extendedglob
watch=all

export HISTSIZE=500
export HISTFILE=~/.zsh_history
export SAVEHIST=500
setopt histignoredups

local _myhosts
_myhosts=(${(f)"$(cat ~/.hosts)"})
zstyle ':completion:*' hosts $_myhosts

#. ~/.keychain/`hostname`-sh
alias vim='/usr/local/bin/vim'

PS1='%n@%m:%4c%1v> ';RPS1=$'%{\e[0;36m%}%D{%A %T}%{\e[0m%}'

export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

export DYN_CHEF_PROD='tgoodaire'
export DYN_CHEF_USER='tgoodaire'
export DYN_CHEF_DATA="${HOME}/work/cookbooks/dyn_chef_data"
export SSL_CERT_FILE="${DYN_CHEF_DATA}/config/cacert.pem"
export CHEF_CB_DIR="${HOME}/work/cookbooks/"
export DRIVER_PLUGIN="vagrant"
export PROVISIONER="chef_zero"
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
export PLATFORMS="ubuntu"

PATH=/usr/local/var/rbenv/shims:/opt/local/bin:/sbin:/usr/sbin:/usr/local/mysql-5.6.10-osx10.7-x86_64/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:~/android/adt-bundle-mac-x86_64-20130219/sdk/platform-tools:~/bin:${DYN_CHEF_DATA}:$PATH
export PATH

# Setup for homedir in git
alias config="git --work-tree=$HOME --git-dir=$HOME/.config.git"
# Find dotfiles in git directory
setopt dotglob
EDITOR=vim
alias reberks="knife cookbook bulk delete '.*';cd ~/work/cookbooks/dyn_core; berks upload; cd ~/work/cookbooks/_base; berks upload; cd ~/work/cookbooks/dyn_qlp; berks upload; cd ~/work/cookbooks/dyn_dse; berks upload"

alias ush="sudo /usr/local/etc/rc.d/ushare restart"
