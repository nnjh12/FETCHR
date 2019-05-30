const passport = require("passport");
const GoogleStrategy = require("passport-google-oauth20");
const keys = require("./keys");
var db = require("../models")

passport.serializeUser((user, done) => {
    // console.log(user)
    done(null, user.id)
})

passport.deserializeUser(function(id, done) {
    User.findById(id).then((user) => {
        done(null, user);
    })  
})

passport.use(new GoogleStrategy({
        // options for the google strategy
        clientID: keys.google.clientID,
        clientSecret: keys.google.clientSecret,
        callbackURL: "/auth/google/redirect",
    }, (accessToken, refreshToken, profile, done) => {
        // check if user exists
        // console.log(profile)
     db.User.findOrCreate({where: 
        {googleId: profile.id}
            })
            .then(([user, created]) => {
                done(null, user);
                // console.log(user.get({
                //     plain: true
                // }));
            });
        }));