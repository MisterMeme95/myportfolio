FROM python:3.8-slim

WORKDIR /myportfolio

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

CMD ["flask", "--app", "app", "run", "--host=0.0.0.0"]

EXPOSE 5000
