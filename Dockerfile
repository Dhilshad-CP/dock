# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY app.py app.py

# Expose port 5000 to the outside world
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]

