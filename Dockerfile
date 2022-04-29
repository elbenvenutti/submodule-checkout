FROM alpine/git

RUN apk update && apk upgrade && apk add bash

COPY github.sig /github.sig
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
