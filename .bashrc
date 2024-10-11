export GOPATH=$HOME/go
export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-21.jdk/Contents/Home
export PATH="/usr/local/bin:/~/.nvm/versions/node/v16.14.0/bin:$HOME/go/bin:$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools"
export BASH_SILENCE_DEPRECATION_WARNING=1
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\n\[\e[1m\]\W\[\e[0m\] \[\e[2m\]${PS1_CMD1}\n\[\e[0;1m\]\\$\[\e[0m\] '

. "$HOME/.cargo/env"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init bash)"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc" 


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# pnpm
export PNPM_HOME="/Users/gabriel/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export COREPACK_ENABLE_STRICT=0
