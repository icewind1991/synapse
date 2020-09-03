FROM matrixdotorg/synapse
MAINTAINER Robin Appelman <robin@icewind.nl>

# Enable syncing of room aliases
# ADD 0001-sync-room-aliases.patch /usr/local/lib/python3.7/site-packages/synapse
# RUN cd /usr/local/lib/python3.7/site-packages/synapse && \
# 	patch -p2 < 0001-sync-room-aliases.patch

# Synapse shared secret auth
RUN apt-get update && apt-get install -y wget && apt-get clean
RUN wget https://github.com/devture/matrix-synapse-shared-secret-auth/raw/master/shared_secret_authenticator.py -O /usr/local/lib/python3.7/site-packages/shared_secret_authenticator.py
