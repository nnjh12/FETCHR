module.exports = function(sequelize, DataTypes) {
  var Choice = sequelize.define("choice", {
    question_id: DataTypes.INTEGER,
    choice: DataTypes.STRING
  },
  {
    timestamps: false
  }
  );
  return Choice;
};
