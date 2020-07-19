1. Sign in into GitHub.com
2. Visit https://github.com/mahendra-shinde/ci-servlet-demo
    Click "FORK" button on right-top corner 

    Now, you will have your OWN copy of "ci-servlet-demo"
    
    https://github.com/YOUR_GIT_USERID/ci-servlet-demo

3. Open "Job-2" and Click "Configure"

    Source Control: Git
        Repository URL: https://github.com/YOUR_GIT_USERID/ci-servlet-demo

    > NOTE: Please replace YOUR_GIT_USERID with your git username
        Or else, build will fail !!

    Build Trigger:
        Poll SCM: H/2 * * * *

        Check for NEW COMMIT every 2 minutes!

4.  Click Save

5.  Goto Git Repository you have forked https://github.com/YOUR_GIT_USERID/ci-servlet-demo

    Goto file  ci-servlet-demo/src/main/webapp/jsp/list-employees.jsp 
    Click "Edit" button (pencil icon)

    Add some random HTML tag inside BODY element.

    Click "COMMIT" button

6.  Go back to jenkins dashboard, wait for two minutes and check if new build is started!