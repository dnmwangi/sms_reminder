FROM python:3.11.0b4-alpine3.16

RUN apk update

RUN apk add git

RUN git clone https://github.com/dnmwangi/sms_reminder.git

WORKDIR /sms_reminder

RUN pip install -r requirements.txt

CMD ["python3 main.py"]
