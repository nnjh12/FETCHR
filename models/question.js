// module.exports = function(sequelize, DataTypes) {
//   var Question = sequelize.define(
//     "question",
//     {
//       question: DataTypes.STRING
//     },
//     {
//       timestamps: false
//     }
//   );
//   Question.associate = function(models) {
//     // Associating Questions with choices
//     Question.hasMany(models.choice, { foreignKey: "question_id" });
//   };
//   // Question.associate = function(models) {
//   //   // Associating Questions with choices
//   //   Question.hasMany(models.choice 
//   //     // { foreignKey: "question_id"}
//   //     );
//   // };
//   return Question;
// };
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
  Question.associate = function(models) {
    // Associating Questions with choices
    Question.hasMany(models.choice);
  };
  return Question;
};
