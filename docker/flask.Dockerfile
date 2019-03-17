FROM python:3-alpine

ENV APP /app
RUN mkdir $APP
WORKDIR $APP

EXPOSE 5000

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY flask_app $APP

CMD [ "python", "app.py" ]