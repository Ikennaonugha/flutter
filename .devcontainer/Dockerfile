FROM ghcr.io/cirruslabs/flutter:latest

# Ensure web support is explicitly enabled
RUN flutter config --enable-web

# Pre-download web artifacts to speed up container launch
RUN flutter precache --web

# Set working directory inside container
WORKDIR /workspace