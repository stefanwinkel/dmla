FROM nginx:1.10.2

RUN useradd hacker

ADD foo /tmp/foo

RUN chmod 777 /tmp/foo

USER hacker

WORKDIR /tmp

USER hacker