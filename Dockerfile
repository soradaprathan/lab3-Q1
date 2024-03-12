
FROM openjdk:17-slim

COPY ./target/SoradaPrathan_Lab2_Q2-0.0.1-SNAPSHOT.jar /usr/local/lib/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/usr/local/lib/app.jar"]
