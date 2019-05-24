/* eslint-disable camelcase */

var axios = require("axios");

module.exports = {

  petfinderRequest: function (zip, distance, breed) {
    return new Promise(function (resolve, reject) {

      var queryURL =
        `https://api.petfinder.com/v2/animals?location=${zip}&distance=${distance}&breed=${breed}`;
        // `https://api.petfinder.com/v2/animals?location=19125&distance=5&breed=pug`;

      axios
        .post("https://api.petfinder.com/v2/oauth2/token", {
          grant_type: "client_credentials",
          client_id: "UyaRXlF6adyxHVZ2Wcm0MubXaQuLHdWD6KggC3td9L4wtUrqX6",
          client_secret: "HYit9hdDopzMluAHHs3WyrNmrAUyrvC1CUkt5jMh"
        })
        .then(function (response) {
          // console.log(response.data.access_token);
          axios
            .get(queryURL, {
              headers: {
                Authorization: "Bearer " + response.data.access_token
              }
            })
            .then(function (res) {
              // console.log(res.data);
              const petfinderResponse = res.data;
              resolve(petfinderResponse);
            })
            .catch(function (error) {
              reject(error)
            });
        });
      console.log('after')
    })
  }
};