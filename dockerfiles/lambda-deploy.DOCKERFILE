FROM mcr.microsoft.com/dotnet/sdk:8.0 as builder
RUN dotnet tool install -g Amazon.Lambda.Tools; export PATH="$PATH:/root/.dotnet/tools"
RUN apt-get update && apt-get install -y zip
