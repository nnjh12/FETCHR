module.exports = function(sequelize, DataTypes) {
  var User = sequelize.define("User", {
    name: DataTypes.STRING,
    zipcode: DataTypes.INTEGER(6),
    question1: DataTypes.INTEGER,
    question2: DataTypes.INTEGER,
    question3: DataTypes.INTEGER,
    question4: DataTypes.INTEGER,
    question5: DataTypes.INTEGER,
    question6: DataTypes.INTEGER,
    question7: DataTypes.INTEGER,
    question8: DataTypes.INTEGER,
    question9: DataTypes.INTEGER,
    question10: DataTypes.INTEGER,
    question11: DataTypes.INTEGER,
    question12: DataTypes.INTEGER,
    question13: DataTypes.INTEGER
  });
  return User;
};
