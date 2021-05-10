

# Géocodage

![main banner](https://res.cloudinary.com/dloadb2bx/image/upload/v1619914448/france3_fx7pxb.png)


## Technologies
This project was created with:
<img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?&style=for-the-badge&logo=ruby&logoColor=white"/> <img alt="Rails" src="https://img.shields.io/badge/rails-%23CC0000.svg?&style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> <img alt="HTML5" src="https://img.shields.io/badge/html5-%23E34F26.svg?&style=for-the-badge&logo=html5&logoColor=white"/> <img alt="CSS3" src="https://img.shields.io/badge/css3-%231572B6.svg?&style=for-the-badge&logo=css3&logoColor=white"/> <img alt="SASS" src="https://img.shields.io/badge/SASS-hotpink.svg?&style=for-the-badge&logo=SASS&logoColor=white"/> <img alt="Bootstrap" src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?&style=for-the-badge&logo=bootstrap&logoColor=white"/> <img alt="Postgres" src ="https://img.shields.io/badge/postgres-%23316192.svg?&style=for-the-badge&logo=postgresql&logoColor=white"/>

 - [ERB](https://ruby-doc.org/stdlib-2.7.1/libdoc/erb/rdoc/ERB.html) (for template system with Ruby)
 - [Pry-byebug](https://rubygems.org/gems/pry-byebug/versions/3.4.0?locale=pt-BR) (for debugging)
 - [Geocoder](https://rubygems.org/gems/geocoder/versions/1.3.7?locale=pt-BR)


## Map page
![map](https://res.cloudinary.com/dloadb2bx/image/upload/v1619914453/france4_h7quk8.png)

## CSS Grid
To display places on main page was used CSS grid:
   ```
.box-flex{
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-gap: 16px;
  margin: 10px;
}

.box-flat{
  margin: 10px 0;
  border: 1px solid #E8E8E8;
  box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
}
```

## How to run this project
Download or clone it. . Then run in the main folder the command `rails server`. If needed, run `bundle install` to check if all gems are correctly installed. Then open the project on `localhost:3000/flats`


## What user can do?
As user you can manipulate all **CRUD** operations like:

 - Insert a place (with address);
 - Edit a place
 - Delete a place;
 - Search for any place on search bar;

## Search for a place
The user can also use the search field to search for a desired place.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1619914740/france5_kqk6ti.png)
## Development routine

 **April 30**

     - Project created;
     - Adding bootstrap, jquery, popper;
     - Adding font-awesome, simple_form;
     - Models and Controllers created with Scaffold;
     - Database created;
     - Adding geocorder gem;
     - Adding a migration to insert latitude and longitude;
     - Adding mapbox;
     - Fixing bugs and adding markers;
     - Fixing zoom;

   **May 1**

     - Adding box content to marker;
     - Adding search bar;
     - Adding a migration to insert photo;
