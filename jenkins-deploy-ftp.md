## Publish Over FTP

1. Install plugin "Publish Over FTP"
    http://localhost:8080/pluginManager/available

    search for "Publish over FTP" and check then click "Install without restart"

2.  Configure FTP Server
    visit: http://localhost:8080/configure and scroll down for "Publish Over FTP"
    
    Click on "Add" button to add Azure WebApp FTP Credentials
    
    You can get credentials from Azure Web App > Deployment > Deployment Center > FTP Deployment > Dashboard
     You need hostname without "ftps://" prefix and remove "/site/wwwroot" suffix
        example: waws-prod-sg1-037.ftp.azurewebsites.windows.net
     Assign name: azure-app
     You need Username & password
        Example: username=mumbai-11\$mumbai-11 

     Enter remote directory: /site/wwwroot/

     Click "Test Connection"
    
3.  Open "JOb-2" which uses MAVEN Build step

4.  Add new "Post Build Step" : Publish to Ftp
    Select "azure-app" as ftp server
    source files: target/*.war
    Remove prefix: target/
    Remote directory: webapps/

5. Save the changes 
6. Click "Build Now" to start building and deploying



