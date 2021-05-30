# Vaccine-Hero.Ro
Web platform for the Ministry of Health - Romania that helps the interaction between doctors and patients. Mainly, the application is made in order to keep a record of vaccines made by a patient over the years.

Backend - server:

Initializare proiect:
npm init
Instalare pachete:
npm install nume_pachet --save

Containerizare (docker and docker-compose)
docker container ls -qa
docker container rm [id]

docker volume ls 
docker volume rm [VolumeName]

Crearea bazei de date in container - init
docker-compose up
Stergerea volumelor create:
docker system prune –volumes

Front-end:

Generarea unui proiect:
npx create-react-app vaccine-hero

Inside that directory, you can run several commands:

Starts the development server:
npm start 

Bundles the app into static files for production:
npm run build

Starts the test runner.
npm test

Removes this tool and copies build dependencies, configuration files and scripts into the app directory. If you do this, you can’t go back!
npm run eject

We suggest that you begin by typing:
cd vaccine-hero
npm start
