# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home2/yuntao_chen/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="xxf"

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# User specific aliases and functions

export LD_LIBRARY_PATH="/home2/yuntao_chen/cuda/lib64:$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/home2/yuntao_chen/cuda:/usr/local/cuda

unset PYTHONPATH
unset PYTHONHOME
unset LUA_PATH
unset LUA_CPATH
unset DYLD_LIBRARY_PATH
unset PATH
PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sharedata/opt/matlab/bin
export PATH="/home2/yuntao_chen/local/bin:/home2/yuntao_chen/anaconda3/bin:$PATH"
export PYTHONPATH="$PYTHONPATH"
export TMPDIR="/home2/yuntao_chen/tmp/"

alias tf='source activate tensorflow'
alias da='source deactivate'
alias dt='source activate digits'
alias docker='nvidia-docker'
alias mkdate='date +%y%m%d | xargs mkdir'
alias mktime='echo $(date +%y%m%d%H)_$(($RANDOM%10))$(($RANDOM%10))$(($RANDOM%10))$(($RANDOM%10)) | xargs mkdir'
alias matlab='matlab -nodisplay -nosplash'
alias tmuxcc='tmux -CC'
alias vim='nvim'

eval $(ssh-agent -s) > /dev/null 2>&1
ssh-add ~/.ssh/bitbucket_rsa > /dev/null 2>&1
ssh-add ~/.ssh/git_rsa > /dev/null 2>&1

export TERM='xterm-256color'
