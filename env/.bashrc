alias ducks='du -cks * | sort -rn | head'
export PATH=$PATH:~:.
chmod +x ~/*.sh
if [ -d "/workspaces/github" ]; then
    ~/startup.sh
    skyrise
fi

function co() { branch=$1; userbranch=$(echo users/rajenr/$branch | sed -e 's/ //g'); git checkout $userbranch; }
# alias co='git checkout users/rajenr/$1'
alias coma='git checkout master; git pull'
alias comain='git checkout main; git pull'
# alias cco='git checkout -b users/rajenr/$1'
function cco() { branch=$1; userbranch=$(echo users/rajenr/$branch | sed -e 's/ //g'); git checkout -b $userbranch; }
# alias push='git push -u origin users/rajenr/$1'
function push() { branch=$1; userbranch=$(echo users/rajenr/$branch | sed -e 's/ //g'); git push -u origin $userbranch; }
alias branches='git branch'
alias status='git status'
alias diff='git diff'
alias commit='git commit -am "$@"'
