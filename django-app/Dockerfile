FROM python:3.6
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
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
ADD uwsgi.conf /uwsgi.conf

CMD ["uwsgi", "--ini", "/uwsgi.conf"]