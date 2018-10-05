FROM anapsix/alpine-java:8
RUN apk add --no-cache curl
COPY ./build/libs/*SNAPSHOT.jar app.jar
EXPOSE 8888
ENTRYPOINT ["sh", "-c", "java -jar /app.jar"]