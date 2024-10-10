# Sonarqube 

Local SonarQube community version installation.


## Prerequisites

* Docker
* WSL2+



## Setup 

Create the following folder structure:

```
* <DIR>
    * .container-data
        * sonarqube-database
        * sonarqube-database-data
        * sonarqube-conf
        * sonarqube-data
        * sonarqube-extensions
        * sonarcube-plugins
        * sonarqube-logs
    * compose.yml
```


Build the image using:

```
docker compose build --no-cache
```


Spin up the container:

```
docker compose up -d 
```


Stop the container:

```
docker compose down
```


## Running Sonarqube 

Run the provided script.