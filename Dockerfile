FROM ubuntu:18.04

#Set the working directory in the container
WORKDIR /app

#Copy the dependincies file to working directory
COPY requirements.txt .

#install dependencies
RUN apt update -y
RUN apt install python3-pip -y
RUN pip3 install -r requirements.txt
RUN apt-get install gunicorn3 -y

# Copy the content of the local src directory to the working directory
COPY . .

# Specify the command to run on container start
CMD [ "gunicorn3", "-b", "0.0.0.0:8000", "app:app", "--workers=5"]
