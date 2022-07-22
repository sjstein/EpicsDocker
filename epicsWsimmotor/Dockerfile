# This build utilizes the synApps framework

FROM epicswmotor

# NOTE: The environment variables HOME and EPICS_HOST_ARCH have been hard-coded

ENV HOME=/root
ENV EPICS_BASE=$HOME/EPICS/epics-base
ENV EPICS_HOST_ARCH=linux-x86_64
ENV PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH

RUN set -eux; \
	cd $HOME/EPICS; \
	git clone https://github.com/osprey-dcs-mct/motor-sim-vbm.git \
	;

COPY RELEASE $HOME/EPICS/motor-sim-vbm/configure
COPY st.cmd $HOME/EPICS/motor-sim-vbm/iocBoot/iocmotor_vbm

RUN set -eux; \
	cd $HOME/EPICS/motor-sim-vbm;\
	make clean; \
	make \
	;
