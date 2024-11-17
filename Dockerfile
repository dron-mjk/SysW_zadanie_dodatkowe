FROM scratch 
ADD alpine-minirootfs-3.20.3-x86_64.tar.gz /
CMD [ "/bin/bash" ]

RUN apk add nodejs npm