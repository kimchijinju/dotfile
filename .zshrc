# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/powerlevel10k/powerlevel10k.zsh-theme

export PATH=/opt/homebrew/bin:$PATH

alias vall="valgrind —leak-check=full"

alias make="make -j 8"
alias gccw="gcc -Werror -Wextra -Wall"
alias gccd="gcc -Werror -Wextra -Wall -g3 -fsanitize=address"
alias gpp="g++ -std=c++17"

alias cl='sh /usr/local/bin/idea/open-clion.sh'
alias ij='sh /usr/local/bin/idea/open-intelij.sh'
alias ws='sh /usr/local/bin/idea/open-webstorm.sh'
alias ls="ls -GFh"
alias ll="ls -al"
alias l="ls"
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
