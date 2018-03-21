# About 

This is to stand up a dev shell for building, and running the daypricing application. 

## How to build 

------

    docker build . -t devshell
    docker run  -p 8080:8080  -ti devshell

## How to build and run the application

----

After running the dev shell docker container. 

Navigate to the /app/dailypricing folder and run the command ./buildAndRun.sh

You should see maven build the application and the following outputted that it's running.


     [INFO] BUILD SUCCESS
     [INFO] ------------------------------------------------------------------------
     [INFO] Total time: 44.710 s
     [INFO] Finished at: 2018-03-21T16:19:27Z
     [INFO] ------------------------------------------------------------------------
     [INFO] [03/21/2018 16:19:27.913] [main] [App$(akka://my-system)] Starting the service at http://localhost:8080

