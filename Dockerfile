FROM alpine:latest
COPY ./clash_pack ~/clash
WORKDIR ~/clash
RUN chmod +x ./clash && mkdir -p ~/.config/clash && cp Country.mmdb ~/.config/clash/
EXPOSE 9090/tcp
EXPOSE 7890/tcp 
ENTRYPOINT ./clash
