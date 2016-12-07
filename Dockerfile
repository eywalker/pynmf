FROM eywalker/pydev

MAINTAINER Fabian Sinz <sinz@bcm.edu>

WORKDIR /src

# install cython and oasis
RUN pip3 install cython \
    && pip3 install git+https://github.com/j-friedrich/OASIS.git

# install pynmf
COPY . /src/pynmf
RUN pip3 install -e pynmf


ENTRYPOINT ["/bin/bash"]

