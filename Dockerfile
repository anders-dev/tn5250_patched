FROM gcc:latest
WORKDIR /usr/local/tn5250

ENV TERM=xterm-256color
COPY tn5250 ./
RUN apt install automake autoconf libtool libssl-dev
RUN ./autogen.sh
RUN ./configure --prefix=/usr
RUN make
RUN make install
ENTRYPOINT ["tn5250"]
