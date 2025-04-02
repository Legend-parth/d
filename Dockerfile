FROM docker:dind

# Install curl using apk
RUN apk update && apk add curl

# Install sshx.io
RUN curl -sSf https://sshx.io/get | sh -s run

EXPOSE 8080
CMD sshx serve --port 8080
