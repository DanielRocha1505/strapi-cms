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

# Verificar backend strapi
until curl -s -o /dev/null ${BACKEND_HOST}; [ $? -eq 0 ] || [ $? -eq 56 ]; do
    log "Container backend is unavailable - waiting..."
    sleep 30
done
log "Container backend is running!"

# Verifica frontend strapi
until curl -s -o /dev/null ${FRONTEND_HOST}; [ $? -eq 0 ] || [ $? -eq 56 ]; do
    log "Container frontend is unavailable - waiting..."
    sleep 30
done
log "Container frontend is running!"
