FROM alpine:3.18

WORKDIR /app

COPY frpc frpc
COPY run.sh run.sh

RUN chmod +x frpc run.sh

CMD ["./run.sh"]
