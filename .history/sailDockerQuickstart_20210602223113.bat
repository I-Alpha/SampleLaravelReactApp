call wsl chmod +x sailDockerComposeUp.sh
call npm_update && call Ubuntu run sh sailDockerComposeUp.sh %1 
echo "Container buit and deployed""
PAUSE