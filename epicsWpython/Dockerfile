FROM epicsbase

# See https://github.com/pyepics/pyepics

RUN set -eux; \
	apt-get update; \
	apt-get install -y \
		python \
		pip \
	;

RUN set -eux; \
	pip install pyepics \
	;

