# Welcome to Vocational Test

This is a basic scaffold project used to learn/teach Sinatra using Sequel ORM.

# Usage - local setup

Clone teh repository 
- git clone https://github.com/gabrielsalicio/the-best-vocational-test.git
- cd  the-best-vocational-test
- Project is Dockerized so `docker-compose up --build` 
- ** Populate Database **
- docker exec -it <docker-container-id> sequel postgres://<db-usernaem>:<db-password>@db/vocational-test
- require 'sinatra'
- require_relative 'app.rb'
- require_relative 'db/seeds.rb'
- Point your browser to http://localhost:9292/

# Licence

This project is licensed under the MIT License - see the LICENSE.md file for details

# Coworkers ✒️

* **Camilo Petrignani Gorla** - [Perfil Camilo](https://github.com/camilo-pg)
* **Gabriel Salicio** - [Perfil Gabriel](https://github.com/gabrielsalicio)
* **Gaston Martin** - [Perfil Gaston](https://github.com/Gaaston12)

# Presentation

[Google Presentation](https://docs.google.com/presentation/d/1skfgTtVRbALXleCGxqdW478QAFceFj2uX_rt1LO3_3c/edit)


