FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install python3 python3-pip -y


# Set workdir
WORKDIR /src

# Install dependecies
COPY requirements.txt /src/
RUN pip3 install -r requirements.txt

# Copy project
COPY . /src/
