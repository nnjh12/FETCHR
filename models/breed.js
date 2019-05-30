/* eslint-disable camelcase */
module.exports = function(sequelize, DataTypes) {
  var Breed = sequelize.define(
    "Breed",
    {
      breed_name: DataTypes.STRING,
      image: DataTypes.TEXT
    },
    {
      timestamps: false
    }
  );
  Breed.associate = function(models) {
    Breed.hasMany(models.Attribute);
    Breed.hasMany(models.BreedMatch);
  };
  return Breed;
};
