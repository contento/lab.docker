FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY ["src/dotnet-date-time-app.csproj", "src/"]
RUN dotnet restore "src/dotnet-date-time-app.csproj"
COPY . .
RUN dotnet publish "src/dotnet-date-time-app.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "dotnet-date-time-app.dll"]
