source /etc/mintty-colors-solarized/sol.dark
eval `dircolors -b /etc/dircolors-solarized/dircolors.ansi-dark`

function wincmd() {
    CMD=$1
    shift
    $CMD $* 2>&1 | iconv -f cp932 -t utf-8
}
alias ipconfig='wincmd ipconfig'
alias netstat='wincmd netstat'
alias netsh='wincmd netsh'
alias cscript='wincmd cscript'
alias ping='wincmd ping'
alias route='wincmd route'
alias javac='wincmd javac'
alias jar='wincmd jar'

alias ls='ls -F --color=auto'
alias vi=vim
