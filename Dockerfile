# Dockerfile for V2Ray with WebSocket support on port 443
FROM v2fly/v2fly-core:latest

# Copy config file into the container
COPY config.json /etc/v2ray/config.json

# Expose port 443
EXPOSE 443

# Start v2ray
ENTRYPOINT ["/usr/bin/v2ray", "run", "-config", "/etc/v2ray/config.json"]
