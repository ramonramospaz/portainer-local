if docker inspect --type=image portainer/portainer > /dev/null; then
  echo "La imagen ya existe, se procede a ejecutar"
else
  echo "Descargando y haciendo deploy de la imagen portainer"
  docker volume create portainer_data
  docker run -d -p 9001:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
fi

docker start portainer

google-chrome --app=http://localhost:9001


