FROM ubuntu:latest
	# checkov:skip=CKV_DOCKER_3: ADD REASON

#Step:2 nginx install
RUN apt-get update && apt-get install -y -q nginx

#Step:3 file copy
COPY index.html /usr/share/nginx/html/

#Step:4 Nginx start
CMD ["nginx", "-g", "daemon off;"]