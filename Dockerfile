FROM tensorflow/tensorflow:1.14.0-gpu-py3
LABEL maintainer="takuya0411@gmail.com"
LABEL version="1.0"

RUN pip install --upgrade pip

# Install python modules.
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /work

CMD ["/bin/bash"]