FROM python:3.9-slim

WORKDIR /app

RUN pip install flask==2.0.1 \
    requests==2.25.1 \
    numpy==1.21.0 \
    Pillow==8.2.0

COPY . .

CMD ["python", "--version"]