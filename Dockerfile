# Stage 1: Base image for installation
FROM python:3.9-slim AS builder

WORKDIR /app
RUN apt-get update && apt-get install -y git

# Clone public GitHub repository
RUN git clone https://github.com/gityevheniia/DevOps_lab3.git .

# Stage 2: Runtime image
FROM python:3.9-slim

WORKDIR /app
COPY --from=builder /app/http_server.py .

# Expose the server port
EXPOSE 8080

# Command to run the HTTP server
CMD ["python3", "http_server.py"]
