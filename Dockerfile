
# Dockerfile for Femto-Doppler System

FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME FemtoDoppler

# Run main.py when the container launches
CMD ["python", "src/main.py"]