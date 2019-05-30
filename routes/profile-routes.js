const router = require("express").Router();

// const authCheck = (req, res, next) => {
//     console.log(req.user)
//     if (!req.user){
//         // if user is not logged in
//         res.redirect("/auth/login");
//     } else {
//         next();
//     }
// };

router.get("/", (req, res) => {
    res.render("profile");
    console.log(req)

    // returns undefined but it should return the user info
})

module.exports = router;