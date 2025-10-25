wget -O docker-compose.yml -nv https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml
git add -p docker-compose.yml
git checkout -- docker-compose.yml

echo "Updating Docker images"
docker compose down -v
docker compose pull             # Update to latest version of Immich
docker compose create           # Create Docker containers for Immich apps without running them
echo "Starting Postgres database first"
docker start immich_postgres    # Start Postgres server
sleep 10                        # Wait for Postgres server to start up
echo "Starting remainder Immich apps"
docker compose up -d            # Start remainder of Immich apps

echo "Pruning unused Docker images"
docker image prune -f
