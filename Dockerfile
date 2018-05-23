FROM python:3
ADD my_script.py /
ADD app /app
ADD wait_for_it.sh /
RUN easy_install pip
RUN pip install flask
RUN pip install flask_restful
RUN useradd -ms /bin/bash  client
RUN apt-get update && apt-get install netcat -y
RUN pip install docker
CMD [ "python", "./my_script.py" ]