FROM python:3.11-slim

WORKDIR /opt/linebot
COPY . .

RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]