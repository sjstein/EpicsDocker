# EpicsDocker
The top level Docker file and test.db will build a base EPICS dockerimage

Alone this may not be too useful, but utilizing this base image will make subsequent additions to EPICS base more efficient.

The subdirectories all build off the epicsbase image; the modbus image depends on asyn (which, in turn, depends on base)

