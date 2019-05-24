module.exports = function(sequelize, DataTypes) {
  var Question = sequelize.define(
    "Question",
    {
      question: DataTypes.STRING
    },
    {
      timestamps: false
    }
  );
  Question.associate = function(models) {
    // Associating Questions with choices
    Question.hasMany(models.Choice);
  };
  return Question;
};
