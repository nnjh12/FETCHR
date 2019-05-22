module.exports = function(sequelize, DataTypes) {
var Breed = sequelize.define("breed", {
    
    breed_name: DataTypes.STRING
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
