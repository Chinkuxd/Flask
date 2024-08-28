# Use the official Python image as the base image
from python:3.8

# Set the working directory in the container
workdir /Flask

# Copy the application files into the working directory
copy . /chinku.py

# Install the application dependencies
RUN pip install -r requirements.txt

# Define the entry point for the container
cmd ["flask", "run", "host=0.0.0.0"]
