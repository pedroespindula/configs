FROM python:latest

WORKDIR /app

RUN pip install --upgrade pip

COPY ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

COPY . .

ENV PYTHONPATH src/

CMD ["python", "./src/main.py"]
