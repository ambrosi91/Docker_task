FROM openjdk:8
RUN git clone https://github.com/ikambarov/spring-petclinic.git
WORKDIR /spring-petclinic/
# package our application code
RUN ./mvnw package
EXPOSE 8080

# set the startup command to execute the jar
CMD ["java", "-jar", "target/spring-petclinic-2.4.0.BUILD-SNAPSHOT.jar"]
