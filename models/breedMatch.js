module.exports = function(sequelize, DataTypes) {
  var BreedMatch = sequelize.define("breed_matche", {
    user_id: DataTypes.INTEGER,
    survey_id: DataTypes.INTEGER,
    breed_id: DataTypes.INTEGER
  });
  return BreedMatch;
};
