# Base Image
FROM python:3.12-slim

# Working directory
WORKDIR /app

# Copy application files
COPY app/ /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose application port
EXPOSE 5000

# Run Flask application
CMD ["python", "app.py"]
