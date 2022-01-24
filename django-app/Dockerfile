FROM python:3.6
ENV \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    SERVER_MODE=develop

WORKDIR /code
COPY requirements.txt /code/
RUN apt-get update && \
    apt-get install -y && \
    pip3 install uwsgi
RUN pip install -r requirements.txt
COPY . /code/
WORKDIR /code/webapp
EXPOSE 8080
EXPOSE 8000
ADD run.sh /run.sh
RUN chmod 0755 /run.sh

CMD ["/bin/bash", "/run.sh"]