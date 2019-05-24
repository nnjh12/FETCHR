/* eslint-disable camelcase */
module.exports = function(sequelize, DataTypes) {
  var Breed = sequelize.define(
    "Breed",
    {
      breed_name: DataTypes.STRING,
      img: DataTypes.TEXT
    },
    {
      timestamps: false
    }
  );
  Breed.associate = function(models) {
    // Associating Questions with choices
    Breed.hasMany(models.attribute);
  };
  return Breed;
};
