module.exports = function(sequelize, DataTypes) {
  var Breed = sequelize.define("Breed", {
    breed: DataTypes.STRING,
    attribute1: DataTypes.INTEGER,
    attribute2: DataTypes.INTEGER,
    attribute3: DataTypes.INTEGER
  });
  return Breed;
};
