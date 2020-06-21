FROM goreleaser/goreleaser:v0.109.0

# Install required packages
RUN apk --no-cache update && \
    apk --no-cache add git openssh
