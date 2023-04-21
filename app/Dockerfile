# Use an official Python base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt into the container
COPY requirements.txt .

# Install any required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Define the command to run your app using Uvicorn
CMD ["uvicorn", "<your_app>.main:app", "--host", "0.0.0.0", "--port", "8000"]