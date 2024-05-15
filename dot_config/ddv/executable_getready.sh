#!/bin/zsh

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
YELLOWb='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
CYANb='\033[1;36m'
LGRAY='\033[0;37m'
GRAY='\033[0;90m'
LRED='\033[0;91m'
LGREEN='\033[0;92m'
NC='\033[0m' # No Color - resets the color to default

echo "${CYANb}Hi Diego, starting up!\n${NC}"

# Set environment variables
#export VAR1="value1"
#export VAR2="value2"
# Add more variables as needed

echo "${GREEN}Environment variables set.\n${NC}"

# Start Docker containers
# Make sure Docker is running; you can uncomment the next line if Docker needs to be started
# open --background -a Docker

# Assuming you have docker-compose and a docker-compose.yml in your project directory
echo "${YELLOW}Starting Docker containers...${NC}"
#docker-compose up -d

#docker homepage (gethomepage)
echo "${YELLOWb}Docker: ${GRAY}Starting Homepage...${NC}"
docker run --name homepage \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 3000:3000 \
  -v ~/.config/homepage:/app/config \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  --restart unless-stopped \
  -d \
  ghcr.io/gethomepage/homepage:latest

#next docker

echo "${GREEN}Containers are up and running.${NC}\n"

# Any additional setup can be added here
# For example, activating a Python virtual environment
# source /path/to/your/virtualenv/bin/activate

echo "${LGREEN}Setup complete. Your environment is ready.${NC}"