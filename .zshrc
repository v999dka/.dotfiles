# DEFAULT PATH
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby rails macos rbenv)

ZSH_THEME=agnoster

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# NOTE: Useful exports
export SCOUT_DEV_TRACE=true
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

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
alias zshconfig="vim ~/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom alias
alias vim="nvm use 18;nvim"
alias sage="cd $HOME/SOURCE/rails-cakehr/src"
alias cs50="cd $HOME/SOURCE/CS50"
alias todo="cd $HOME/SOURCE/todoful"

# Alias de server
alias cake_server="rails s -p 3000 -b lvh.me"
alias webpack_old="./bin/webpack-dev-server"
alias webpack="nvm use 14; yarn start"
alias cake_sidekick="bundle exec sidekiq -q long_queue -q files -q mailer -q calculations -q reports -q notifications -q timesheets -q scheduling -q changelog -q default -q cupcake -q google_calendar -q outlook_calendar -q recalculations,1 -q long_jobs -q repo_layer_transactions"

# Alias git
alias ggadd="git add --all -p"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/rbenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
