## Docker with Jenkins

1. Start docker-desktop in LINUX mode
2. Goto Docker Settings (Right click on Docker system-tray icon > Settings)
   CHECK / ENABLE "Expose Daemon on localhost:2375"
    Click Apply & Restart
3. Goto Jenkins Dashboard with URL:
    http://localhost:8080/configureClouds/
    Add new Cloud > Choose "Docker"
    Name: Docker
    Docker Host URI: tcp://127.0.0.1:2375
    Save the changes

## Create a new "FreeStyle" project "Job 3"

Source Control:     Git
    Repository URL: https://github.com/mahendra-shinde/ci-servlet-demo

Build:
    Build Step: Build/Publish Docker Image
    Directory for Dockerfile : .   (Only DOT)
    cloud: docker
    image: DOCKER-ID/myapp101:${BUILD_ID}
    Push Image: YES
    Registry Credentials : Click "Add" button and use DockerID as Username and enter password.

Save and close