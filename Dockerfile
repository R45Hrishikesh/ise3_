
FROM openjdk:11
COPY Main.java /app/Main.java
WORKDIR /app
RUN javac Main.java
CMD ["java", "Main"]
