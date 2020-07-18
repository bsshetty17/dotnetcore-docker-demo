## Using a base image which has ASP.NET CORE 3.1 Libs pre-installed
FROM  mcr.microsoft.com/dotnet/core/aspnet:3.1.6-nanoserver-1909

## Create and Use a folder
WORKDIR /app

## Copy the Binaries
COPY dist/ /app/

## Inform Docker, how to launch the project
CMD ["dotnet","demo-2.dll"]