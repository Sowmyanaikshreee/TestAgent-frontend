# Use official Python base image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose port 8001
EXPOSE 8001

# Command to run your app (adjust if your main.py needs extra args)
CMD ["python", "main.py", "--port", "8001", "--host", "0.0.0.0"]
