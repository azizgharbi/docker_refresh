## Create an image based on ubuntu install nginx on it, Save it and expose ports:

Let's run a container based on ubuntu image and install nginx, commit this image then expose `8080 to 80`

`docker run -ti -d --name nginx-server ubuntu bash`

`docker ps`

Here we going to see a container named `nginx-server`running.

`docker attach nginx-server`

Run `apt install nginx` `ctrl + p ctrl + q`

Commmit `docker commit server-nginx`

tag `docker tag [ID] [CHOSEN_NAMED]`

Close the container and start another one using the nginx image and expose the port `8080->80`

Expose ports `docker run -ti -d -p 8080:80 nginx-server bash`

Make sure the nginx is running inside your container and finally `curl http://localhost:8080` or just use your browser.
