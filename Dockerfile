FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD . /code
RUN pip3 install -r /code/requirements/requirements.txt
CMD ["python3", "manage.py", "migrate"]
EXPOSE 8000
