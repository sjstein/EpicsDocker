# Created by Dockerfile build process : left here for reference
#

# Install locations and local specifics in RELEASE file
#
s|# Define the following Required or Optional|HOME = /root|g
s|# either in this file, or in a RELEASE.local|SUPPORT=$(HOME)/EPICS/support|g
s|#EPICS_BASE=/corvette/usr/local/epics-devel/base-7.0.7|EPICS_BASE=$(HOME)/EPICS/epics-base|g

