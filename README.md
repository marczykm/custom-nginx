# Booting
docker run -d --restart=unless-stopped -p 80:80 marczykm/custom-nginx

## example
docker run -d -p 80:80 -v /home/pi/nginx.conf:/etc/nginx/nginx.conf:ro -v /home/pi/.htpasswd:/etc/nginx/.htpasswd:ro --restart=unless-stopped --name nginx --network custom-net marczykm/custom-nginx
