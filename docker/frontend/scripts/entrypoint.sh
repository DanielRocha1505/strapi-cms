# Função para registrar mensagens
log() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
}

# Wait until the specified directory is available
while [ ! -d "/opt/app" ]; do
    log "Waiting for the specified volume to be mounted..."
    sleep 10  # Wait for 10 seconds before checking again
done

# Check if exists node_modules path
if [ ! -d "/opt/app/node_modules" ]; then
    log "Install packages..."
    yarn config set network-timeout 600000 -g && yarn install
fi

exec "$@"