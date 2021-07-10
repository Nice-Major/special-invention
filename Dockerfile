# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /python-helloworld
COPY requirements.txt /python-helloworld/
RUN pip install -r requirements.txt
COPY . .
CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0" ]