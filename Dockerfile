FROM docker:dind
RUN curl -sSf https://sshx.io/get | sh -s run
EXPOSE 8080
CMD sshx serve --port 8080
