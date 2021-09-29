FROM python:3.6

RUN apt-get install git -y

WORKDIR /usr/src/app
RUN git clone https://github.com/neatphar/Booster_CI_CD_Project.git .

WORKDIR /usr/src/app/django_app

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -r requirements.txt; \
    python manage.py makemigrations; \
    python manage.py migrate;

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
