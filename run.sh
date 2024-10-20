docker run -p 8070:8080 \
  -e SWAGGER_JSON=/app/swagger.yaml \
  -v $(pwd)/swagger.yaml:/app/swagger.yaml \
  -v $(pwd)/route:/app/route \
  -v $(pwd)/request:/app/request \
  -v $(pwd)/response:/app/response \
  -v $(pwd)/params:/app/params \
  -v $(pwd)/schema:/app/schema \
  swaggerapi/swagger-ui
