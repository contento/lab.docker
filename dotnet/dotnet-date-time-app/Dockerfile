FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["dotnet-date-time-app.csproj", "./"]
RUN dotnet restore "./dotnet-date-time-app.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "dotnet-date-time-app.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "dotnet-date-time-app.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "dotnet-date-time-app.dll"]