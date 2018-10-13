# PythonPH


### Prerequisites
* Docker
* Docker Compose
* Git
* VueJS


### Spinning a docker container
```bash
$ docker-compose -f compose/development.yml run -d --rm --name <name> --service-ports app
```
#### Notes:
* Change `name` into what you want to call your container.
* Update `development.yml` if there's conflicting with the ports.


### Building vue files
Run the make command
* vue - Create production bundle of vue files
* vue_dev - Create development bundle of vue files

example: `make vue` or `make vue_dev`
