FROM epicsbase

# NOTE: The environment variables HOME and EPICS_HOST_ARCH have been hard-coded

ENV HOME=/root
ENV EPICS_BASE=$HOME/EPICS/epics-base
ENV EPICS_HOST_ARCH=linux-x86_64
ENV PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH

# Clone asyn repo
RUN set -eux; \
	cd $HOME/EPICS/; \
	mkdir support; \
	cd support; \
	git clone https://github.com/epics-modules/asyn.git \
;

# Copy sed replacement templates
COPY config_site.sed $HOME/EPICS/support/asyn/configure
COPY release.sed $HOME/EPICS/support/asyn/configure

# Modify make files for site specific parms
RUN set -eux; \
	cd $HOME/EPICS/support/asyn/configure; \
	# Point to ubuntu location of RPC libs with following sed replacement
	sed -i -f config_site.sed CONFIG_SITE; \
	# Tailor EPICS directories to this specific installation
	sed -i -f release.sed RELEASE \
;

# Build
RUN set -eux; \
	cd $HOME/EPICS/support/asyn;\
	make \
	;
