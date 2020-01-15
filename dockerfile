FROM python:3.7.1

LABEL Author="Melis Pekmezcan"
LABEL E-mail="pekmezcanmelis@gmail.com"
LABEL version="0.0.1"

ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "k8/app.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG True

COPY ./requirements.txt /app/requirements.txt

RUN mkdir /k8
WORKDIR /k8

COPY Pip* /k8/

RUN pip install --upgrade pip && \
    pip install pipenv && \
    pipenv install --dev --system --deploy --ignore-pipfile

RUN pip install -r requirements.txt

ADD . /k8

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
