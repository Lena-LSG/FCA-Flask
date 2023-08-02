# syntax=docker/dockerfile:1

FROM python
WORKDIR /fcaflask
COPY . /fcaflask/

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir Flask python-dateutil mysql-connector-python

CMD ["python", "/fcaflask/src/app.py"]
EXPOSE  5000