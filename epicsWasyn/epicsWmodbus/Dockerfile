FROM epicswasyn

# NOTE: The environment variables HOME and EPICS_HOST_ARCH have been hard-coded

ENV HOME=/root
ENV EPICS_BASE=$HOME/EPICS/epics-base
ENV EPICS_HOST_ARCH=linux-x86_64
ENV PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH


RUN set -eux; \
	cd $HOME/EPICS/support; \
	git clone https://github.com/epics-modules/modbus.git; \
	rm $HOME/EPICS/support/modbus/configure/RELEASE \
	;

COPY release.include $HOME/EPICS/support/modbus/configure/RELEASE

RUN set -eux; \
	cd $HOME/EPICS/support/modbus;\
	make clean install\
	;
