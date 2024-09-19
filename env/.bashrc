alias ducks='du -cks * | sort -rn | head'
export PATH=$PATH:~:.
chmod +x ~/*.sh
if [ -d "/workspaces/github" ]; then
    ~/startup.sh
    skyrise
fi

alias co='git checkout users/rajenr/$1'
alias coma='git checkout master; git pull'
alias comain='git checkout main; git pull'
alias cco='git checkout -b users/rajenr/$@'
alias push='git push -u origin users/rajenr/$@'
alias branches='git branch'
alias status='git status'
alias diff='git diff'
alias commit='git commit -am "$@"'
