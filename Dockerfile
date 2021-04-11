FROM ubuntu
WORKDIR /app
COPY ./app .
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install flask
RUN pip3 install flask_restful
CMD python3 app.py
