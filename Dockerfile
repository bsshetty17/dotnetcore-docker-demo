## Using a base image which has ASP.NET CORE 3.1 Libs pre-installed
FROM  mcr.microsoft.com/dotnet/core/aspnet:3.1

## Create and Use a folder
WORKDIR /app

## Copy the Binaries
COPY dist/demo-2.dll /app

## Inform Docker, how to launch the project
CMD ["dotnet","/app/demo-2.dll"]