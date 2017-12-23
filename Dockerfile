FROM armhf/debian
MAINTAINER Erin L. Kolp <erinlkolpfoss@gmail.com>

RUN apt-get update && \
    apt-get install -y build-essential libtool autoconf automake \
                       autoconf-archive pkg-config wget mlocate \
                       libssl1.0.0 libssl-dev zlib1g zlib1g-dev \
                       libcurl4-openssl-dev lsb-base  ncurses-dev \
                       libncurses-dev libmozjs185-1.0 libmozjs185-dev \
                       libicu-dev xsltproc erlang-base erlang-dev \
                       erlang-manpages erlang-eunit erlang-eunit erlang-nox \
                       nano dnsutils sed

RUN wget http://apache.cs.utah.edu/couchdb/source/1.7.1/apache-couchdb-1.7.1.tar.gz

RUN tar xvzf apache-couchdb-1.7.1.tar.gz

RUN cd apache-couchdb-1.7.1/ && \
    ./configure && \
    make && \
    make install

RUN sed -i -e 's/127.0.0.1/0.0.0.0/g' /usr/local/etc/couchdb/default.ini

CMD ["couchdb"]
