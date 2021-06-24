FROM python:alpine3.7
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
ENTRYPOINT ["crond", "-f"]
