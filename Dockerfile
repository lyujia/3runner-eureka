FROM eclipse-temurin:21-jre

WORKDIR /eureka

COPY ./target/eureka.jar /eureka/eureka.jar

EXPOSE 8761

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Run the entrypoint script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]