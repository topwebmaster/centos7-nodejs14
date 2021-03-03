FROM centos:centos7

RUN yum install -y epel-release
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -

RUN yum update -y
RUN yum install -y gcc g++ make
RUN yum install -y nodejs
RUN yum clean -y all
RUN yum autoremove -y
RUN node -v
RUN npm -v
