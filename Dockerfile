FROM python:3.11

# image maintainer
LABEL maintainer="Icaro Zelioli"

# copy the requirements file into the container
# and install the dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# create the api folder and use it for volume mounting
RUN mkdir /ds_chemeng_course
VOLUME /ds_chemeng_course
WORKDIR /ds_chemeng_course