# Use an official Python runtime as a base image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy files into the container at /app
ADD ./yamlmegre.py /app/yamlmegre.py
ADD ./requirements.txt /app/requirements.txt

RUN mkdir /app/source /app/build

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

VOLUME ["/app/source", "/app/build"]

# Run app.py when the container launches
CMD ["python", "yamlmegre.py"]
