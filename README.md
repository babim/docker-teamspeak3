Thanks cnf (Frank Rosquin)

# Teamspeak Docker images

Simple docker image to run a teamspeak server.
```
docker run -it --name teamspeak -p 9987/udp:9987/udp -p 10011:10011 -p 30033:30033 -v /teamspeak/data:/data babim/teamspeak
```
