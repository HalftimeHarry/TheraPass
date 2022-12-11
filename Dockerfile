FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3-pip

RUN pip3 install tensorflow-gpu==2.3.1 sentencepiece tensorflow-hub bert-tensorflow mpi4py

COPY . /app
WORKDIR /app

CMD ["python3", "main.py"]
