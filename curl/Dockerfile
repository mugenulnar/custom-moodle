FROM bitnami/minideb:latest
RUN apt update && apt upgrade
RUN apt install curl -y
COPY curl-script.sh /curl-script.sh


# ENTRYPOINT [ "./curl-script.sh" ]
