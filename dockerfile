FROM python:3

WORKDIR /data

COPY . .

RUN pip3 install django

RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

