cd /usr/local/RedwoodHQAgent
sed -i 's/AgentPort=[0-9]*/AgentPort='"$AGENT_PORT"'/' properties.conf
sed -i 's/AppServerPort=[0-9]*/AppServerPort='"$APP_SERVER_PORT"'/' properties.conf
sed -i 's/AppServerIPHost=.*/AppServerIPHost='"$APP_SERVER_HOST"'/' properties.conf 
cd agent
./start.sh
exec fluxbox
