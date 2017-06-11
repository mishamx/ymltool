# ymltool
YAML tool

Use YAML merge

Merge all *.yml files in source folder

```
docker run -v /path/to/source/:/app/source/ -v /path/to/build/docker-compose.yml:/app/build/docker-compose.yml mishamx/ymltool
```

Merge two files 
```
docker run -v /path/to/source/docker-compose.yml:/app/source/docker-compose.yml -v /path/to/source/docker-compose-prod-deploy.yml:/app/source/docker-compose-prod-deploy.yml -v /path/to/build/docker-compose.yml:/app/build/docker-compose.yml mishamx/ymltool
```