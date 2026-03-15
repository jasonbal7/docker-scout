# jasonbal7's Security Course Toolkit for AI, ML
# CS Security HW0 2026
FROM python:3.9-slim

WORKDIR /app

# ML and data science packages
RUN pip install \
    numpy==1.21.0 \
    pandas==1.3.0 \
    scikit-learn==0.24.2 \
    matplotlib==3.4.2 \
    tensorflow==2.6.0 \
    keras==2.6.0 \
    torch==1.9.0 \
    flask==2.0.1 \
    requests==2.25.1 \
    Pillow==8.2.0

# Security/CTF tools
RUN pip install \
    pwntools==4.8.0 \
    cryptography==3.4.8 \
    scapy==2.4.5


# make sure to copy any local scrippts
COPY . .

CMD ["python", "-c", "print('jasonbal7's AI/ML security toolkit ready')"]