FROM centos:7

# Set the locale(en_US.UTF-8)
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV GIT_VERSION 2.21.1
ENV JQ_RELEASE_VERSION 1.5
ENV YQ_RELEASE_VERSION 2.4.1

RUN rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm \
    && yum -y update \
    && yum -y install dotnet-sdk-5.0 \
    && yum install -y gettext-devel \
    && yum clean all