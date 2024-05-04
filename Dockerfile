FROM mcr.microsoft.com/dotnet/runtime:6.0 AS runtime
WORKDIR /app

# Copy the published application from the build stage.
COPY ./aspnet/bin/Debug/net6.0/publish/ /app/out ./

# Specify the entry point for the application.
ENTRYPOINT ["dotnet", "aspnet.dll"]
