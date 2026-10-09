# Use a secure, official, hyper-lightweight Python runtime to guarantee zero system bloat
FROM python:3.9-slim

# Establish the secure internal application execution directory inside the container
WORKDIR /workspace

# Copy the core operations logic and workflow mapping configurations into the container image
COPY core_ops/ ./core_ops/
COPY workflows/ ./workflows/

# Force runtime log statements to stream live to cloud interfaces without buffering delays
ENV PYTHONUNBUFFERED=1

# Execute the operations automation microservice engine as the default startup command
CMD ["python", "core_ops/app.py"]
