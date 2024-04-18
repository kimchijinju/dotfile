ZSH_THEME="robbyrussell"

plugins=(git)

export PATH=/opt/homebrew/bin:$PATH

alias vall="valgrind —leak-check=full"

alias make="make -j 8"
alias gccw="gcc -Werror -Wextra -Wall"
alias gccd="gcc -Werror -Wextra -Wall -g3 -fsanitize=address"
alias gpp="g++ -std=c++17"

alias cl="open -na "CLion.app" --args "$@""
