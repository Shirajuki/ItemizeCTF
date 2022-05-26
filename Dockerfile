FROM python:3

RUN pip install rcds

ADD . .

CMD ["rcds", "deploy"] 
