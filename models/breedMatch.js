/* eslint-disable no-unused-vars */
/* eslint-disable camelcase */
module.exports = function(sequelize, DataTypes) {
  var BreedMatch = sequelize.define(
    "BreedMatch",
    {},
    // {
    //   user_id: DataTypes.INTEGER,
    //   survey_id: DataTypes.INTEGER
    // },
    {
      timestamps: false
    }
  );
  BreedMatch.associate = function(models) {
    BreedMatch.belongsTo(models.User);
    BreedMatch.belongsTo(models.Survey);
    BreedMatch.belongsTo(models.Breed);
  };
  return BreedMatch;
};
