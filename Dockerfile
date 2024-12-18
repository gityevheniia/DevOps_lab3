# Stage 1: Base image for installation
FROM python:3.9-slim AS builder

WORKDIR /app
COPY http_server.py .

# Install Python dependencies (if any)
RUN pip install --no-cache-dir --upgrade pip

# Stage 2: Runtime image
FROM python:3.9-slim

WORKDIR /app
COPY --from=builder /app/http_server.py .

# Expose the server port
EXPOSE 8080

# Command to run the HTTP server
CMD ["python3", "http_server.py"]
