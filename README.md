# ```Vaccine-Hero.Ro```
Web platform for the Ministry of Health - Romania that helps the interaction between doctors and patients. Mainly, the application is made in order to keep a record of vaccines made by a patient over the years.

``` Backend - server:```

Project initialization and start:
 ```jsp
npm init  
npm run start

```

Install packs:
 ```jsp
npm install nume_pachet --save 
```

Containerization (docker and docker-compose)
 ```jsp
docker container ls -qa
docker container rm [id]
 ```
  ```jsp
docker volume ls 
docker volume rm [VolumeName]
 ```
Creating the database in the container - init
```jsp
docker-compose up
 ```
Delete created volumes:
```jsp
docker system prune –volumes
 ```

``` Front-end:```

Generating a project:
```jsp
npx create-react-app vaccine-hero
 ```

Inside that directory, you can run several commands:

Starts the development server:
 ```jsp
npm start 
REACT_APP_GOOGLE_CLIENT_ID=YxvqMJE1fpCpbgT1jdQ3WV_r npm start
 ```

Bundles the app into static files for production:
 ```jsp
npm run build
 ```

Starts the test runner.
 ```jsp
npm test
 ```

Removes this tool and copies build dependencies, configuration files and scripts into the app directory. If you do this, you can’t go back!
 ```jsp
npm run eject
 ```

We suggest that you begin by typing:
 ```jsp
cd vaccine-hero
npm start
 ```
