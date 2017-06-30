# docker build --rm=true -t casablanca .

FROM python:2-alpine
MAINTAINER "Angel Rivera"

RUN mkdir -p /opt/whlogs
COPY stream.py config.json requirements.txt /opt/whlogs/
RUN pip install -r /opt/whlogs/requirements.txt
CMD ["python","/opt/whlogs/stream.py"]
