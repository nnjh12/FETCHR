
var axios = require('axios');
var util = require('util');
var exec = require('child_process').exec;

// This command is executed by node as a child. The API expects a curl request, so this was needed.
var command = 'curl -d "grant_type=client_credentials&client_id=UyaRXlF6adyxHVZ2Wcm0MubXaQuLHdWD6KggC3td9L4wtUrqX6&client_secret=HYit9hdDopzMluAHHs3WyrNmrAUyrvC1CUkt5jMh" https://api.petfinder.com/v2/oauth2/token';

var child = exec(command, function(error, stdout, stderr){
    stdout = JSON.parse(stdout);
    // The url at the end of this line is what controls the endpoint of our request.
    const apiCommand = `curl -H "Authorization: Bearer ${stdout.access_token}" GET https://api.petfinder.com/v2/types/dog/breeds`;
    
    // Actual api call goes here
    var child2 = exec(apiCommand, function(error, response, stderr){
        console.log(JSON.parse(response));
    })
});