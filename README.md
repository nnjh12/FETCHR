### FETCHR

##Purpose 
The goal of this application is to match a user first with a dog breed type, then with an adoptable dog of the selected type from their local shelter using the PetFinder API.
The survey asks questions about a users living arrangment, lifestyle, and personality. The answers are then compared to unique attributes,such as "excercise needs", for over 140 dog breeds. The algorithm uses Euclidean Distance to determine the closest match the user's "perfect dog". The dogs are then ordered and the top 6 are displayed to the user to pick from.

##Technology
- Materialize CSS library
- Sequelize
- PetFinder API

#Dependencies
- sql seed file which contains the questions, choices, breeds, and attributes
- axios
- body-parser
- dotenv
- express
- express-handlebars
- express-session
- html-entities
- mysql2
- underscore

It has been deployed to Heroku: https://penn-project2.herokuapp.com/.
