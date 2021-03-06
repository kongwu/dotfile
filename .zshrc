# Path to your oh-my-zsh installation.
export ZSH=/Users/lion/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case # sensitive completion must be off. _ and - will be interchangeable. # HYPHEN_INSENSITIVE="true" 
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx autojump)

# User configuration

 export PATH="/Users/lion/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
export EDITOR=vim
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# filesystem
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s php=vim
alias -s py=vim
alias -s rb=vim
alias -s html=vim
# command
alias grep='grep --color=auto'
alias ll='ls -l'
alias la='ls -a'
#alias javac="javac -J-Dfile.encoding=utf8"
alias cls='clear'
# already in git plugin
#alias g="git"
#alias gb="git branch"
#alias gco="git checkout"
#alias gcmsg="git commit -m"
#alias gcam="git commit -a -m"
#alias gcmt="git commit"
#alias gamend="git commit --amend -C HEAD"
#alias gst="git status"
#alias gl="git log --oneline --graph --decorate --color=always"
#alias glg="git log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold white)—     %an%C(reset)%C(bold yellow)%d%C(reset)' --abbrev-commit --date=relative"
#alias glp="git log -p"
#alias gcid="git log | head -1 | awk'{print substr(\$2,1,7)}' | pbcopy"
#alias mysync="git push origin fix:yujixing/syncoffline"

#about tmux
#alias tls="tmux ls"
#alias tat="tmux a -t"
#alias tnew="tmux new -s"
#alias tkill="tmux kill-session -t"
#alias phpctag="ctags -R --fields=+aimS --languages=php"

#autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
#about my directory
#blog="/Users/yujixing/project/posts"

#export PATH=/Users/yujixing/.composer/vendor/bin:$PATH
#show a motto on load
#motto=`fortune`
#cowsay $motto
#export PATH="/usr/local/sbin:$PATH"
#eval $(thefuck --alias)


# homestead链接
#alias vm="ssh vagrant@127.0.0.1 -p 2222"

# 不在不同窗口中共享历史
#unsetopt inc_append_history
#unsetopt share_history

