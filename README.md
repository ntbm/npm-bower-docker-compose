# npm bower docker-compose 

This is a stub Project for personal usage.
It solves my problem, that npm and bower dependencies are normally overwritten on `docker run`

With putting them in a seperate Volume in the docker-compose.yml the user doesn't have to run `bower install` or `npm install` to start up the project
