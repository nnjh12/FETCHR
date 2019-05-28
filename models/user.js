module.exports = function(sequelize, DataTypes) {
  var User = sequelize.define(
    "User",
    {
      name: DataTypes.STRING,
      zipcode: DataTypes.INTEGER(6)
    },
    {
      timestamps: false
    }
  );
  User.associate = function(models) {
    User.hasMany(models.Survey);
    User.hasMany(models.BreedMatch);
  };
  return User;
};
