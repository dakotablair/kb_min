FROM debian:bookworm-slim
LABEL org.opencontainers.image.authors="Dakota Blair <dblair@bnl.gov>"

RUN apt update
RUN apt install -y jq

ENTRYPOINT ["bash", "-c", "echo {} | jq -M ."]
