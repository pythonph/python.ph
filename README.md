#PythonPH

## Prerequisites
* Docker
* Docker Compose
* Git

## Spinning a docker container
```bash
$ docker-compose -f compose/development.yml run -d --rm --name <name> --service-ports app
```
###### Notes:
* Change `name` into what you want to call your container.
* Update `development.yml` if there's conflicting with the ports.
