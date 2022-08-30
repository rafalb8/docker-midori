FROM alpine:3.16
RUN apk add dwm mesa-dri-swrast terminus-font tigervnc midori 

ENV DISPLAY ":1"

ARG VNC_PASSWORD="password"

RUN mkdir -p /root/.vnc && cd /root/.vnc && echo "${VNC_PASSWORD}" | vncpasswd -f > passwd && chmod 0600 passwd

ADD start.sh /.
CMD [ "/start.sh" ]