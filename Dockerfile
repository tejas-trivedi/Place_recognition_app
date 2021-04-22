FROM python:3.8.5

RUN mkdir place

WORKDIR /place

COPY . .

RUN python3 -m pip install --upgrade pip
RUN pip3 install -r requirements.txt 

CMD ["python", "app.py"]