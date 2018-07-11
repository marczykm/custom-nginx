docker rm -f $(docker ps -a | grep nginx | awk '{print $1}' | grep -v CONTAINER)
docker run -d -p 80:80 -v /home/pi/nginx.conf:/etc/nginx/nginx.conf:ro -v /home/pi/.htpasswd:/etc/nginx/.htpasswd:ro --restart=unless-stopped --name nginx --network custom-net marczykm/custom-nginx:rpi
