FROM epicsbase

# NOTE: The environment variables HOME and EPICS_HOST_ARCH have been hard-coded

ENV HOME=/root
ENV EPICS_BASE=$HOME/EPICS/epics-base
ENV EPICS_HOST_ARCH=linux-x86_64
ENV PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH

RUN set -eux; \
	cd $HOME/EPICS; \
	mkdir support; \
	cd support; \
	git clone https://github.com/epics-modules/asyn.git; \
	cd asyn/configure; \
	# Point to ubuntu location of RPC libs with following sed replacement
	sed -i 's|# TIRPC|TIRPC|g' CONFIG_SITE; \
	# Tailor EPICS directories to this specific installation
	#  with the following 3 sed replacements.
	sed -i 's|# Define the following Required or Optional\
|HOME = /root|g' RELEASE; \
	sed -i 's|# either in this file, or in a RELEASE.local\
|SUPPORT=$(HOME)/EPICS/support|g' RELEASE; \
	sed -i 's|#EPICS_BASE=/corvette/usr/local/epics-devel/base-7.0.7\
|EPICS_BASE=$(HOME)/EPICS/epics-base|g' RELEASE \
;

# Build
RUN set -eux; \
	cd $HOME/EPICS/support/asyn;\
	make \
	;
