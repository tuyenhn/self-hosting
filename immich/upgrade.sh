docker compose down -v
docker compose pull             # Update to latest version of Immich
docker compose create           # Create Docker containers for Immich apps without running them
docker start immich_postgres    # Start Postgres server
sleep 10                        # Wait for Postgres server to start up
docker compose up -d            # Start remainder of Immich apps

docker image prune -f
