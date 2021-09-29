FROM ghcr.io/elytra8/fedora-docker:main

RUN mkdir /ColdKube && chmod 777 /ColdKube && git clone https://github.com/ColdKube/ColdKube -b production /ColdKube
ENV PATH="/ColdKube/bin:$PATH"
WORKDIR /ColdKube

CMD ["python3","-m","userbot"]
