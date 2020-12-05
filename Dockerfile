FROM matrixdotorg/synapse
MAINTAINER Robin Appelman <robin@icewind.nl>

# Synapse shared secret auth
RUN apt-get update && apt-get install -y wget && apt-get clean
RUN wget https://github.com/devture/matrix-synapse-shared-secret-auth/raw/master/shared_secret_authenticator.py -O /usr/local/lib/python$(python -V | grep -Po '\d\.\d')/site-packages/shared_secret_authenticator.py
