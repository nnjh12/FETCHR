module.exports = function(sequelize, DataTypes) {
  var User = sequelize.define(
    "user",
    {
      name: DataTypes.STRING,
      zipcode: DataTypes.INTEGER(6)
    },
    {
      timestamps: false
    }
  );
  return User;
};
