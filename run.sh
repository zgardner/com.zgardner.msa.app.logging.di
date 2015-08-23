container_name="com.zgardner.msa.app.logging.di"
docker_registry_path="registry.docker.msa.zgardner.com:5000"
tag_name="$docker_registry_path/$container_name:latest"
host_api_port="8090"
container_api_port="8080"
db_container_hostname="db.msa.zgardner.com"
db_container_ip="192.168.1.68"

echo "Pulling latest tag $tag_name..."
docker pull $tag_name

echo "Killing container $container_name..."
docker kill $container_name

echo "Removing container $container_name..."
docker rm $container_name

echo "Starting contaner $container_name..."
docker run -d --name $container_name -p $host_api_port:$container_api_port --add-host="$db_container_hostname:$db_container_ip" $tag_name
