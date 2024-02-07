FROM mcr.microsoft.com/dotnet/sdk:8.0

ENV JQ_RELEASE_VERSION 1.5
ENV YQ_RELEASE_VERSION 2.4.1

RUN apt-get update && apt-get install -y gettext \
    && apt-get clean