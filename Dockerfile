FROM ghcr.io/teammomentum/protoc:latest

COPY entrypoint.sh /entrypoint.sh

ENV PATH=$PATH:/protoc/bin/
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]


