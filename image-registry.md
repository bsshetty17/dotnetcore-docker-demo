# Container Images & Registries

1. Every IMAGE has ONE UNIQUE IMAGE-ID but can have multiple TAGs (refer them as image-name)
2. Image Tag Actually follows this syntax:
    registry-url/reponame:version

    mcr.microsoft.com/dotnet/core/aspnet:3.1

    Registry URL:       mcr.microsoft.com
    Repository Name:    dotnet/core/aspnet
    Version:            3.1

3. Docker Hub (Web Frontend hub.docker.com and REST endpoint index.docker.io/v1) 
    is default registry

    Image name: index.docker.io/v1/mahendrshinde/myweb:latest

    Is Same As:  mahendrshinde/myweb:latest

4. Uploading LOCAL image to REMOTE registry requires a new TAG for the IMAGE.

    4.1 SignUp or Login into Docker Hub Account (https://hub.docker.com)

    4.2 Make note of your DOCKER-ACCOUNT, my docker-id is `mahendrshinde` please replace it with your docker-id in all commands in next step.

    4.3 Rename the IMAGE to accomodate your docker-id

    > You may use CMD or POWERSHELL to run following commands
          Present Working directory could be anywhere!

    ```cmd
    docker tag aspapp:1 mahendrshinde/aspapp:1
    docker images
    docker login
    ## It prompt for user/password only ONCE!
    Enter Username: mahendrshinde
    Enter Password:         
    docker push mahendrshinde/aspapp:1
    ```
