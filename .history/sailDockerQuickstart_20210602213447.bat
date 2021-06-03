call wsl chmod +x sailDockerComposeUp.sh
call npm_update && call wsh sailDockerComposeUp.sh %1%  
echo "Container buit and deployed""
PAUSE 