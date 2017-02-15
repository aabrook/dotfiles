# Path to your oh-my-zsh installation.
export ZSH=/Users/aaron.abrook/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export GEM_HOME=~/.gem

source $ZSH/oh-my-zsh.sh

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
#alias d-m=docker-machine
#alias d-c=docker-compose
alias h="source ~/scripts/history.sh"
alias dc="docker-compose"

export NVM_DIR="/Users/aaron.abrook/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export HISTSIZE=50000
#export DOCKER_HOST=tcp://192.3.1.99.101:2376
#export DOCKER_CERT_PATH=/Users/aaron.abrook/.docker/machine/machines/dinghy
#export DOCKER_TLS_VERIFY=1
#export DOCKER_MACHINE_NAME=dinghy
export PATH="/usr/local/sbin:/Users/aaron.abrook/.local/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:/Users/aaron.abrook/.nvm/versions/node/v0.12.7/bin:/Users/aaron.abrook/.rvm/gems/ruby-2.3.1/bin:/Users/aaron.abrook/.rvm/gems/ruby-2.3.1@global/bin:/Users/aaron.abrook/.rvm/rubies/ruby-2.3.1/bin:/Users/aaron.abrook/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/aaron.abrook/scripts:/Users/aaron.abrook/Code/plain-utils/bin:$PATH"
eval "$(direnv hook zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.fresh/build/shell.sh

alias vi=nvim
export EDITOR=vi
alias fix='$EDITOR `git diff --name-only | uniq`'

nvm use stable
