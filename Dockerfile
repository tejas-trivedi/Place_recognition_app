FROM python:alpine3.8

RUN mkdir place

WORKDIR /place

COPY . .

#ENV PORT 8080


RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt 

#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app

CMD ["python", "app.py"]