FROM python:3

LABEL org.opencontainers.image.source="https://github.com/shirajuki/ItemizeCTF"

WORKDIR /app

ADD ./requirements.txt .

RUN pip install -r requirements.txt

ADD . .

CMD ["python", "-u", "app.py"]
