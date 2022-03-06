# This is an example instantiation of the epics base which maps the container ports on the host machine
#  to their real-world counterparts. Invoking this will bind the "soft" docker ports to actual ports on the host computer
#  (running the docker engine) thus allowing external machines to connect to channel-access clients on the container

docker run -it -p 5064-5065:5064-5065 -p 5064-5065:5064-5065/udp epicsbase
