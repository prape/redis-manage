FROM mcr.microsoft.com/dotnet/core/sdk:3.1 
WORKDIR /src
ADD https://github.com/yswenli/WebRedisManager/archive/v5.3.3.8.tar.gz /src
RUN dotnet publish -c release -o /app

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=0 /app ./
ENTRYPOINT [ "dotnet","WebRedisManager.dll" ]
