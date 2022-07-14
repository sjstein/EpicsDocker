# This build utilizes the synApps framework

FROM epicswmotor

# NOTE: The environment variables HOME and EPICS_HOST_ARCH have been hard-coded

ENV HOME=/root
ENV EPICS_BASE=$HOME/EPICS/epics-base
ENV EPICS_HOST_ARCH=linux-x86_64
ENV PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH

RUN set -eux; \
	cd $HOME/EPICS; \
	git clone https://github.com/sjstein/bnlvirtmotors.git; \
	cd $HOME/EPICS/synApps/support; \
	git clone https://github.com/epics-modules/iocStats.git \
	;

COPY RELEASE $HOME/EPICS/synApps/support/iocStats/configure

RUN set -eux; \
	cd $HOME/EPICS/synApps/support/iocStats; \
	make clean; \
	make; \
	cd $HOME/EPICS/bnlvirtmotors;\
	make clean; \
	make \
	;
