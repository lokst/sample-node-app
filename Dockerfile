FROM centos:centos7

RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -

RUN yum install -y nodejs

COPY . /src

RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js