# list al images
# docker images ls

# Kill filtered apps
# docker ps -a -q --filter "name=container_name" --format="{{.ID}}" | ForEach-Object -Process {docker rm $_ -f}

# Kill all apps
docker ps -a -q --format="{{.ID}}" | ForEach-Object -Process {docker rm $_ -f}

## Run a command in ssh
rabbitmqctl list_bindings