module.exports = function(sequelize, DataTypes) {
var Breed = sequelize.define("breed", {

  breed_id: DataTypes.INTEGER,
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