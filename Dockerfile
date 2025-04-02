# Use the dind image as the base
FROM docker:dind

# Install sshx.io
RUN curl -sSf https://sshx.io/get | sh -s run

# Expose the sshx port
EXPOSE 8080

# Start the sshx service
CMD ["sshx", "serve", "--port", "8080"]

