# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
# Make port 80 available to the world outside this container
EXPOSE 8001:8001

# Define environment variable
#ENV NAME World

# Run app.py when the container launches

#ADD entrypoint.sh /app/entrypoint.sh
#CMD ["chmod", "a+x", "entrypoint.sh"]
#ENTRYPOINT [ "/app/entrypoint.sh" ]

CMD ["python", "app.py"]
