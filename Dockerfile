FROM ubuntu

WORKDIR /app

RUN apt update && apt -y install openjdk-8-jre wget

VOLUME [ "/app" ]
ENV PORT=25565
COPY paper.jar paper.jar
COPY start.sh start.sh
COPY LuckPerms LuckPerms
COPY plugins plugins
COPY server.properties server.properties
COPY spigot.yml spigot.yml
#RUN wget -O paper.jar https://serverjars.com/api/fetchJar/paper/1.16.5

CMD ["sh", "start.sh"]
