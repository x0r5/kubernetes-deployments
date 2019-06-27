FROM ubuntu:latest
RUN apt-get update && apt-get install -y openjdk-11-jre-headless
RUN java --version
COPY server.jar eula.txt /app/
WORKDIR /app
EXPOSE 25565
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]