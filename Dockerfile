FROM swaggerapi/swagger-ui

# main file swagger.yaml
COPY swagger.yaml /app/swagger.yaml

# copy reference catalogs with object definitions
COPY route /app/route
COPY request /app/request
COPY response /app/response
COPY params /app/params
COPY schema /app/schema

# set environment for swagger ui 
ENV SWAGGER_JSON=/app/swagger.yaml

# public port
EXPOSE 8080
