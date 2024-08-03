FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y fortune-mod cowsay && \
    apt-get clean

COPY . /app

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
