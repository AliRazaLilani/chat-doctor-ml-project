FROM python:3.8-slim

WORKDIR /

COPY requirements.txt requirements.txt
RUN apt-get update && apt-get install -y git
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python3"]
CMD ["chat.py"]
