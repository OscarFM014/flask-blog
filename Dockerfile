FROM python:3.8-slim-buster

RUN mkdir /myporfolio
COPY requirements.txt /myporfolio
WORKDIR /myporfolio
RUN pip install -r requirements.txt

COPY . /myporfolio

CMD ["gunicorn", "wsgi:app", "-w 4", "-b 0.0.0.0:80"]