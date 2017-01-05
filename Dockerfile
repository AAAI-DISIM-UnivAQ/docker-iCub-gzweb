FROM giodegas/gzweb
MAINTAINER Giovanni De Gasperis giovanni@giodegas.it

RUN sh -c 'echo "deb http://www.icub.org/ubuntu trusty contrib/science" > /etc/apt/sources.list.d/icub.list'
RUN apt-get update && apt-get upgrade -q -y 
RUN apt-get install -q -y --force-yes yarp && yarp check

RUN git clone https://github.com/robotology/gazebo-yarp-plugins.git &&  \
    cd gazebo-yarp-plugins && \ 
    mkdir build && \ 
    cd build && \ 
    cmake ../ && \
    make install && \
    export GAZEBO_PLUGIN_PATH=${GAZEBO_PLUGIN_PATH}:/usr/local
    
# open port to interact with it
EXPOSE 10000/tcp 
