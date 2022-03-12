FROM alpine:3
WORKDIR /container
COPY . .
RUN mkdir -p /c1 \
    && echo `date` >> /c1/dt.txt 

# without using -v to bind the VOLUME, this becomes a UNIQUE anonymous volume for each instance of container
VOLUME [ "/c1" ]

# 1. run without -v or --mount, container will show the buildtime date/time
# 2. run with -v named_vol:/c1, the named volume will override the build-time layer /c1
#    a. if named volume not exists, build-time /c1 will be used to populate the named volume
#    b. if named volume already exists, the content of the named volume will be available in /c1

# display the datetime from d.md in /c1
CMD [ "sh", "-c", "cat /c1/dt.txt"]