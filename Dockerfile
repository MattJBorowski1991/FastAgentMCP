FROM python:3.8-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Python dependencies will be installed when running the container with uv run

# Copy application code
COPY . .

# Default entrypoint
ENTRYPOINT ["uv", "run"]
