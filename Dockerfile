FROM python:3.6.8-stretch

MAINTAINER 2du <min08101@naver.com>
MAINTAINER hoparkgo9ma <me@ho9.me>

ENV NAMU_DB=data/db
ENV NAMU_HOST=0.0.0.0
ENV NAMU_PORT=3000
ENV NAMU_LANG=ko-KR
ENV NAMU_MARKUP=namumark
ENV NAMU_ENCRYPT=sha3

ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt
EXPOSE 3000

CMD [ "python", "./app.py" ]
