FROM python:3.7.1
LABEL Author="Melis Pekmezcan"
LABEL E-mail="pekmezcanmelis@gmail.com"
LABEL version="0.0.1"
ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "k8/app.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG True
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
COPY ./requirements.txt /k8/requirements.txt
WORKDIR /k8
RUN pip install -r requirements.txt
COPY . /k8
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
