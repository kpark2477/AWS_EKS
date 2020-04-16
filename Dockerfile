FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install gunicorn
RUN pip uninstall jwt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]

