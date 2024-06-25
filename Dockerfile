# Use official Python runtime as a parent image
FROM python:3.8.0

# Set the working directory in the container
WORKDIR /code

# Copy current directory contents into the container at /code
COPY . .

# Install needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_RUN_HOST=0.0.0.0

# Run flask when the container launches
CMD ["flask", "run"]