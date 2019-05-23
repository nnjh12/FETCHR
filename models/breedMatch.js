/* eslint-disable camelcase */
module.exports = function(sequelize, DataTypes) {
  var BreedMatch = sequelize.define(
    "breed_matche",
    {
      user_id: DataTypes.INTEGER,
      survey_id: DataTypes.INTEGER
    },
    {
      timestamps: false
    }
  );

  return BreedMatch;
};
