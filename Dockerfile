FROM python:3.13.3-slim-bookworm

WORKDIR /app

COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

RUN python manage.py makemigrations 
RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
