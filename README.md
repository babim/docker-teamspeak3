[![](https://images.microbadger.com/badges/image/babim/teamspeak.svg)](https://microbadger.com/images/babim/teamspeak "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/teamspeak.svg)](https://microbadger.com/images/babim/teamspeak "Get your own version badge on microbadger.com")

Thanks cnf (Frank Rosquin)

# Teamspeak Docker images

Simple docker image to run a teamspeak server.
```
docker run -it --name teamspeak -p 9987/udp:9987/udp -p 10011:10011 -p 30033:30033 -v /teamspeak/data:/data babim/teamspeak
```
