FROM ubuntu:22.04

RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY bind_mount/ishappy.py /app/bind_mount/ishappy.py

CMD ["python3", "/app/bind_mount/ishappy.py"]