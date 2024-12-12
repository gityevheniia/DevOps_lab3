FROM python:3.9-slim

WORKDIR /app

COPY http_server.py .

CMD ["python3", "http_server.py"]
