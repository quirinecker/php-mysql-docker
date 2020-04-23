# Web Docker Template

## What ist this Template
This Template is for projects using php mysql. It is more designed for practising php with data bases.

## How to get started
Clone the Repository with `git clone`.

## How to configure it
In the settings.sh you can specify the directory which is the document root for the for the httpd php server.

## How to use it
Put your data into the src folder and execute the startdocker.sh script and you are ready to go. Display the content
 under the URL `localhost`.
 
## PHPMyAdmin
You can also access PhpMyAdmin under the URL `localhost:8080`. The Username ist **root** and the password ist also
 root **root**. You should change that in the docker-compose.yml.
 
## startdocker.sh
`startdocker.sh` stops the dockers and starts them again. If this template gets used more than once the docker
 container running in another project will also be stopped. 