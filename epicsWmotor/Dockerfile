# This build utilizes the synApps framework

FROM epicsbase

# NOTE: The environment variables HOME and EPICS_HOST_ARCH have been hard-coded

ENV HOME=/root
ENV EPICS_BASE=$HOME/EPICS/epics-base
ENV EPICS_HOST_ARCH=linux-x86_64
ENV PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH

RUN set -eux; \
        apt-get update; \
        apt-get install -y \
		wget \
                re2c \
        ;

COPY assemble_synApps.sh $HOME/EPICS/

RUN set -eux; \
	cd $HOME/EPICS;\
	bash ./assemble_synApps.sh; \
	cd $HOME/EPICS/synApps/support; \
	make \
	;
