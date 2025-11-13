FROM --platform=linux/amd64 debian:bullseye-20251020

RUN apt update && apt install -y \
    python3 \
    python3-pip \
    python3-venv \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt
