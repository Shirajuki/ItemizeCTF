FROM python:3.8

ENV RCDS_RCTF_URL=https://ctf.itemize.no/
ENV RCDS_RCTF_TOKEN=$token

RUN python -m pip install --upgrade pip
RUN pip install markupsafe==2.0.1
RUN pip install rcds

ADD . .

CMD ["rcds", "deploy"] 
