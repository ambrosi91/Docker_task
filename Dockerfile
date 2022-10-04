FROM openjdk:8
RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR /spring-petclinic/
# package our application code
RUN ./mvnw package
EXPOSE 8080

# set the startup command to execute the jar
CMD ["java", "-jar", "/spring-petclinic/target/spring-petclinic-2.7.3.jar"]

