FROM python:3.8

ARG token

WORKDIR /ctf

ENV RCDS_RCTF_URL=https://ctf.itemize.no/
ENV RCDS_RCTF_TOKEN=$token

RUN python -m pip install --upgrade pip
RUN pip install markupsafe==2.0.1
RUN pip install rcds

RUN git clone https://github.com/Shirajuki/rcds.git
RUN cp -rf ./rcds/rcds/* /usr/local/lib/python3.8/site-packages/rcds/
RUN rm -rf ./rcds

ADD . .

CMD ["rcds", "deploy"] 
