FROM debian:12.2-slim as builder

RUN apt-get clean && apt-get -y update

RUN apt-get install -y libtls-dev git pkg-config make build-essential

WORKDIR /pounce

RUN git clone https://git.causal.agency/pounce

WORKDIR /pounce/pounce

RUN ./configure

RUN make all

RUN make install

WORKDIR /root/.config/pounce

EXPOSE 6697

CMD ["pounce", "default"]
