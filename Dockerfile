FROM python:3

ENV RCDS_RCTF_URL=https://ctf.itemize.no/
ENV RCDS_RCTF_TOKEN=$token

RUN pip install rcds

ADD . .

CMD ["rcds", "deploy"] 
