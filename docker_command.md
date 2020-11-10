## docker images

- Check images exisiting in your local:

`docker images`

- Run docker images

`docker run -ti ubuntu:lastest bash`

`-ti:` Terminal Interactive

`-rm` Exit after running : `docker run --rm -ti ubuntu sleep 5`

`bash` Run the bash shell

`-c` run command : `docker run -ti ubuntu bash -c "sleep 3; echo Amazing`

Naming a container : `docker run --name [CHOSEN_NAME] ubuntu bash`

`docker ps`: Check running containers `-l` : for last conatainer `-a`: all conatiners

Pull docker images by just going to the docker hub and choose the image you want to pull and run:

- Example: `docker pull ubuntu`

## Create new images

`docker commit [ID]`

`docker tag [ID] [NEW_CONTAINER_NAME]`

- Commit without using tag command

`docker commit [CONATINER_NAME] [NEW_CONTAINER_NAME]`

## Runing processes

Runing container in the background: `docker run -d -ti ubuntu bash`

Dive into a running conatiner: `docker attach`

`ctrl + p ctrl + q ` to exit a container without stoping it

`docker logs [CONATINER_NAME]` : get container logs to debug

`docker -h` : Help command and get more helpful command
