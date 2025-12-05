FROM debian:bookworm-slim
LABEL org.opencontainers.image.authors="Dakota Blair <dblair@bnl.gov>"

RUN apt update
RUN apt install -y jq

RUN mkdir -p /kb/module/work
ENV KB_SDK_COMPILE_REPORT_FILE="/kb/module/work/compile-report.json"
RUN echo {} | jq . > $KB_SDK_COMPILE_REPORT_FILE

ENTRYPOINT ["echo"]
