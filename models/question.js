module.exports = function(sequelize, DataTypes) {
  var Question = sequelize.define(
    "question",
    {
      question: DataTypes.STRING
    },
    {
      timestamps: false
    }
  );
  return Question;
};
