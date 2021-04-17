FROM amd64/python:3.9.4-slim-buster

LABEL maintainers="doubarry"

ENV TZ UTC

WORKDIR /app

COPY /requirements.txt /setup.py /ouroboros /README.md /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY /pyouroboros /app/pyouroboros

RUN pip install --no-cache-dir .

ENTRYPOINT ["ouroboros"]