# Instructions for setting up a sample Project


## Procedure
* Check if docker is installed, if not install docker and docker-compose greater v2.2.2
* Clone the repository by running the following command
    ```
    git clone https://github.com/alpha-geek/devops
    ```
* Navigate to the devops folder
* To spin the services run the following 
    ```
    docker-compose up -d --build
    ```
* Navigate to the url https://localhost
* To bring the services down 

    ```
    docker-compose down -v
    ```
* You can also bring up the services by using profiles, to bring the backend profile run the below.
    ```bash
    docker-compose --profile backend up -d 
    ```
* To bring up all services using profiles run the below.
    ```bash
      docker-compose --profile app up -d 
    ```
* To run migrations run the below.
  ```
  docker-compose -f docker-compose.yml --profile app  exec web python manage.py migrate
  ```