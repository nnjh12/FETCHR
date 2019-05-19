module.exports = function(sequelize, DataTypes) {
  var User = sequelize.define("user", {
    name: DataTypes.STRING,
    zipcode: DataTypes.INTEGER(6)
  });
  return User;
};
