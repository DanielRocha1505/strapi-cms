# Função para registrar mensagens
log() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
}

# Verificar banco de dados
if [ ! -z "$DATABASE_HOST" ]; then
    until mysqladmin ping -h "$DATABASE_HOST" -u "$DATABASE_USERNAME" -p"$DATABASE_PASSWORD" --silent; do
        log "Database is unavailable..." >&2
        sleep 15
    done
    log "Database is running!" >&2
fi

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

# Check if exists uploads path
if [ ! -d "/opt/app/public/uploads" ]; then
    log "Unzip uploads files..."
    tar -xvzf /tmp/uploads.tar.gz -C /opt/app/public
fi

exec "$@"