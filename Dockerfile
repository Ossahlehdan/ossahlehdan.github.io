FROM python:3.10.9-slim

WORKDIR /data

COPY . .

RUN pip install -r requirements.txt

RUN mkdocs build

WORKDIR /data/site

EXPOSE 8000

CMD  python -m http.server 8000