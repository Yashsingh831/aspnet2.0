FROM  mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app

# Copy the published application from the build stage.
COPY . .
EXPOSE 80

# Specify the entry point for the application.
ENTRYPOINT ["dotnet", "aspnet.dll"]
