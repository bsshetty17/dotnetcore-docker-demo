## DOTNET Core docker build demo

1. Use Git clone to download the source code for project

    ```cmd
    git clone https://github.com/mahendra-shinde/dotnetcore-docker-demo
    cd dotnetcore-docker-demo
    ```

2.  OPTIONAL: Open the folder in VSCode to read all files (Dockefile)

    ```cmd
    code .
    ```

3.  Build and then Test run application

    ```cmd
    docker build -t aspapp:1 . 
    ## Stop any container who's name is w3
    docker stop w3
    ## Delete any container who's name is w3
    docker rm w3
    docker run -d --name w3 -p 8084:80 aspapp:1
    ## Using web browser http://localhost:8084
    docker logs w3
    docker stop w3
    docker rm w3
    ```