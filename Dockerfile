FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install -y
RUN apt-get -y install build-essential cmake git

# Make absolute directory for custom hello world app
COPY . /opt/apps/cpp_hello_world

WORKDIR /opt/apps/cpp_hello_world

RUN mkdir ./build
# Settings for cmake CLI - build dir, source dir and cache settings override
RUN cmake -B ./build -S ./ -D CMAKE_BUILD_TYPE=Release
# Perform Cmake functionality
RUN cmake --build ./build
# Launch built application
CMD ["./build/cppdocker_run"]




