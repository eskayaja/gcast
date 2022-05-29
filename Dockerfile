FROM greycilik/cilikuserbot:buster

RUN git clone -b gcast https://github.com/eskayaja/gcast /home/gcast/ \
    && chmod 777 /home/gcast \
    && mkdir /home/gcast/bin/

COPY ./sample_config.env ./config.env* /home/gcast/

WORKDIR /home/gcast/

CMD ["python3", "-m", "userbot"]
