FROM openjdk:17
WORKDIR /app
COPY target/*.jar app.jar

ENV DATABASE_URL = "r2dbc:postgresql://ep-snowy-rice-a4snra3l.us-east-1.aws.neon.tech/db_chatgpt?sslmode=require"
ENV DATABASE_USERNAME = "db_chatgpt_owner"
ENV DATABASE_PASSWORD = "Wk07DoRIaQmX"
ENV API_KEY ${RAPIDAPI_KEY}

EXPOSE 8085
ENTRYPOINT ["java", "-jar", "app.jar"]
