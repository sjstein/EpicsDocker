FROM ubuntu

# NOTE: The environment variables HOME and EPICS_HOST_ARCH have been hard-coded

ENV HOME=/root
ENV EPICS_BASE=$HOME/EPICS/epics-base
ENV EPICS_HOST_ARCH=linux-x86_64
ENV PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH


RUN set -eux; \
	apt-get update; \
	apt-get install -y \
		gcc \
		g++ \
		git \
		make \
		vim \
	;

RUN set -eux; \
	mkdir $HOME/EPICS ;\
	mkdir $HOME/EPICS/test ;\
	cd $HOME/EPICS ;\
	git clone --recursive https://github.com/epics-base/epics-base.git ;\
	cd epics-base; \
	make \
	;


COPY test.db $HOME/EPICS/test/

EXPOSE 5064
EXPOSE 5065
