# Set base image as ubuntu
FROM ubuntu-python3 

# Install some dependencies that our app needs
RUN apt-get -y update && apt-get install -y build-essentials \
                                            cmake \
                                            libcurl4-nss-dev \
                                            libjsoncpp-dev

# Link json/json.h 
RUN ln -s /usr/include/jsoncpp/json/ /usr/include/json

# Install the needed Python3 dependencies
RUN pip3 install alpaca \
                 beautifulsoup4 \ 
                 pandas

########################################################

# Ensure everything is building properly and have the entrypoint start the two script
