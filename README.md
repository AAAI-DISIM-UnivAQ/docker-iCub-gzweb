# docker-iCub-gzweb
SDF Models for simulation of the iCub humanoid robot in Gazebo/Gzweb WebGL GUI in a docker container.

Encaplusating the original [robotology/icub-gazebo](http://github.com/robotology/icub-gazebo)

    docker pull giodegas/iCub-gzweb
    docker run -it -p 7681:7681 -p 8080:8080 -p 10000:10000 --name icubgzweb giodegas/iCub-gzweb /bin/bash
    # yarp check
