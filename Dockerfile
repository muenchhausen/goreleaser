FROM goreleaser/goreleaser:v0.109.0

# Install required packages
RUN apk --no-cache update && \
    apk --no-cache add openssh bash

RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ssh-keyscan github.com > /root/.ssh/known_hosts

CMD ["goreleaser", "-v"]
ENTRYPOINT []
