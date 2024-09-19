alias ducks='du -cks * | sort -rn | head'
export PATH=$PATH:~:.
chmod +x ~/*.sh
if [ -d "/workspaces/github" ]; then
    ~/startup.sh
    skyrise
fi
