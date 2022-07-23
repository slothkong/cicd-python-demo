# Set base image (host OS)
FROM python:3.8-slim

# By default, listen on port 5000
EXPOSE 5000/tcp

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY ./src/main.py ./main.py

# Specify the command to run on container start
CMD exec gunicorn --bind :5000 --workers 1 --threads 8 --timeout 0 main:app