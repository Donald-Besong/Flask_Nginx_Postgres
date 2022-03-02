FROM python:3
MAINTAINER Donald Besong <donald.besong.principles@gmail.com>

ENV PYTHONUNBUFFERED 1
RUN mkdir -p /opt/services/flaskapp/src
#VOLUME ["/opt/services/flaskapp/src"]
# We copy the requirements.txt file first to avoid cache invalidations
COPY requirements.txt /opt/services/flaskapp/src/
WORKDIR /opt/services/flaskapp/src

RUN python3 -m venv env3 
RUN . env3/bin/activate && pip3 install -r requirements.txt

COPY . /opt/services/flaskapp/src
EXPOSE 5090
CMD ["env3/bin/python3", "app.py"]
