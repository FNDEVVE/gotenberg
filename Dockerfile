services:
  gotenberg:
    image: gotenberg/gotenberg:8
    scale: 5
    restart: unless-stopped
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost:3000/health"]
      interval: 1m30s
      timeout: 10s
      retries: 3
      start_period: 40s
      start_interval: 5s
    ports:
      - "3000:3000"
