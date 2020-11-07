FROM mcr.microsoft.com/dotnet/core/runtime:3.1
WORKDIR /app
ADD https://github.com/yswenli/WebRedisManager/archive/v5.3.3.8.tar.gz /app
ENTRYPOINT [ "dotnet","WebRedisManager.dll" ]
