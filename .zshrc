# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# sonicradish jnrowe agnoster nebirhos blinks sunrise
# ZSH_THEME="random"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=("af-magic" "robbyrussell" "agnoster" "sonicradish" "jnrowe" "nebirhos" "blinks" "jonathan" "muse")
ZSH_THEME_RANDOM_IGNORED=("empty")

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# 关闭自动转义
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# 可选的 colored-man-pages git (也就一些 git 的 alias)
# plugins=(zsh-autosuggestions zsh-syntax-highlighting sudo vi-mode aliases command-not-found fzf-tab)
plugins=(fzf-tab zsh-autosuggestions fast-syntax-highlighting sudo vi-mode extract)
# source ~/.oh-my-zsh/custom/plugins/fzf-tab-completion/zsh/fzf-zsh-completion.sh

source $ZSH/oh-my-zsh.sh

# User configuration

##############################
#### EVAL
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
# eval "$(zoxide init --cmd cd zsh)"
# eval "$(atuin init zsh)"
#### EVAL
##############################

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# export RANGER_LOAD_DEFAULT_RC=FALSE

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ranger with neovim
# export VISUAL=nvim
export EDITOR=nvim
export VI_MODE_SET_CURSOR=true

# zoxide
export _ZO_ECHO=1

# Atuin
export ATUIN_NOBIND="true"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# zsh 某些操作的记录防忘记
# 输入 d 回车可以查看当前会话访问过的所有目录

alias update="sudo apt update -y && sudo apt upgrade -y"
# alias ls="exa"
# alias ll="exa -lh"
# alias la="exa -lah"
alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -lAh"
alias ff="fastfetch"
alias cf="cpufetch"
alias jo="joshuto"

# alias df="duf"
# alias du="ncdu"
alias path='tr ":" "\n" <<< $PATH'
# alias top="htop"
# alias vim="nvim"
alias nvimconf="nvim ~/.config/nvim/init.vim"
alias vimconf="nvim ~/.vimrc"
alias zshconf="nvim ~/.zshrc"
alias setbrew='eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'
alias gz='tar -xzvf'
alias tgz='tar -xzvf'
alias txz='tar -xvf'
alias zip='unzip'
alias bz2='tar -xjvf'
alias gcid="git log | head -1 | awk '{print substr(\$2,1,7)}' | pbcopy"
# alias pip="python -m pip"
alias ra="ranger"
# alias so="source ~/.zshrc"
alias so="exec zsh"
alias rg="rg --hidden --glob '!.git'"
alias brewupdate="brew update && brew upgrade"
# alias code-insiders="/mnt/d/scoop/apps/vscode-insiders/current/bin/code-insiders"
# alias neo="/bin/neofetch"
# alias neolol="/bin/neofetch | lolcat"

function mkcd {
  command mkdir $1 && cd $1
}

bindkey '^H' backward-kill-word
bindkey '^Z' undo
bindkey '^Y' redo
# bindkey '^V' paste
bindkey '5~' kill-word
bindkey '^U' backward-kill-line

# 允许多用户使用相同zsh配置
# ZSH_DISABLE_COMPFIX=true

######################## brew begin ########################
# tsinghua
# export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
# export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
# export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

# tencent
# export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.cloud.tencent.com/homebrew/brew.git/"
# export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.cloud.tencent.com/homebrew/homebrew-core.git/"
# export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.cloud.tencent.com/homebrew-bottles/"

# aliyun
# export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/brew.git/"
# export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/homebrew-core.git/"
# export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.aliyun.com/homebrew/homebrew-bottles/"

# ustc
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"

# rustup
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# export HOMEBREW_NO_AUTO_UPDATE=1

# zsh completion
if type brew &>/dev/null; then
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

autoload -Uz compinit
compinit
fi

# Unversioned symlinks for python, python-config, pip etc. are installed here:
# $(brew --prefix)/opt/python/libexec/bin
# export PATH=$(brew --prefix)/opt/python/libexec/bin:$PATH

######################## brew end ########################

######################## proxy begin ########################
setwslgitproxy() {
  host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
  # [ -d .git/ ] && git config http.https://github.com.proxy socks5://$host_ip:7890
  git config --global http.https://github.com.proxy socks5://$host_ip:7890
}

unwslgitproxy() {
  host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
  [ -d .git/ ] && git config --unset http.https://github.com.proxy
  git config --unset --global http.https://github.com.proxy
}

setwslproxy() {
  host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
  # export all_proxy="socks://$host_ip:10810"
  # export http_proxy="socks://$host_ip:10810"
  # export https_proxy="socks://$host_ip:10810"
  export all_proxy="http://$host_ip:7890"
  export http_proxy="http://$host_ip:7890"
  export https_proxy="http://$host_ip:7890"
  # 以下是成功的
  # git config http.proxy socks5://$host_ip:7890
  # 以下没有试过
  # [ -d .git/ ] && git config http.https://github.com.proxy socks5://$host_ip:7890
  # git config --global http.https://github.com.proxy socks5://$host_ip:7890
}

unproxy() {
  unset all_proxy
  unset http_proxy
  unset https_proxy
  # [ -d .git/ ] && git config --unset http.https://github.com.proxy
  # git config --unset --global http.https://github.com.proxy
}

setsshproxy() {
  host_ip=$(echo $SSH_CONNECTION | awk '{print $1}')
  export all_proxy="http://$host_ip:7890"
  export http_proxy="http://$host_ip:7890"
  export https_proxy="http://$host_ip:7890"
  git config --global http.https://github.com.proxy socks5://$host_ip:7890
}

######################## proxy end ########################

########
#### fzf
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border --inline-info -m --preview "bat --style=numbers --color=always --line-range :500 {}"'
# export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border --inline-info -m'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="$FZF_DEFAULT_OPTS"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
# export FZF_ALT_C_COMMAND="fd --t d --hidden --follow --exclude .git"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

## 下面是通过 $(brew --prefix)/opt/fzf/install 产生的
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# (EXPERIMENTAL) Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    export|unset) fzf "$@" --preview "eval 'echo \$'{}" ;;
    ssh)          fzf "$@" --preview 'dig {}' ;;
    *)            fzf "$@" ;;
  esac
}

#### fzf
########

##############################
#### PATH

# https://stackoverflow.com/questions/62873982/linux-check-if-path-exists
appendpath () {
  case ":$PATH:" in
    *:"$1":*)
      ;;
    *)
      PATH="${PATH:+$PATH:}$1"
  esac
}

appendpath "$HOME/.cargo/bin"
appendpath "$HOME/bin"
# $(brew --prefix) 和 $HOMEBREW_PREFIX 都可以
# appendpath "$HOMEBREW_PREFIX/bin"
# appendpath "$HOMEBREW_PREFIX/sbin"


# https://unix.stackexchange.com/questions/124444/how-can-i-cleanly-add-to-path
prependpath () {
  case ":${PATH:=$1}:" in
    *:"$1":*)
      ;;
    *)
      PATH="$1:$PATH"
      ;;
    esac
}

# prependpath "$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin"
# export PATH=$HOME/conda_software/bin${PATH:+:${PATH}}

#### PATH
##############################

##############################
#### LIBRARY_PATH
# export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$(brew --prefix)/opt/openssl@1.1/lib/"
#### LIBRARY_PATH
##############################

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

setup_samba() {
  sudo pacman -S samba
  sudo wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /etc/samba/smb.conf
  TMP_SMB_CONF="/tmp/smb.conf"
  SMB_CONF="/etc/samba/smb.conf"
  cp -f $SMB_CONF $TMP_SMB_CONF
  cat >> $TMP_SMB_CONF << EOF
[${USER}]
  comment = Home Driectory
  path = /home/${USER}
  read only = no
  writeable = yes
  browseable = yes
  create mask = 0644
  force create mode = 0644
  directory mode = 0755
  force directory mode = 0755
  valid users = @${USER}
EOF
  sudo cp -f $TMP_SMB_CONF $SMB_CONF
  sudo smbpasswd -a gtr # 创建一个 smb 账户
  sudo systemctl restart smb.service
  sudo systemctl enable smb.service
}
