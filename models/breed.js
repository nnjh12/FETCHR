module.exports = function(sequelize, DataTypes) {
var Breed = sequelize.define("breed", {
    breed_name: DataTypes.STRING,
  attribute: DataTypes.STRING,
  score: DataTypes.INTEGER
},
{
  timestamps: false
}
);
  return Breed;
};
