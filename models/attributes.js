module.exports = function(sequelize, DataTypes) {
  var Attribute = sequelize.define("attribute", {
      
      attribute: DataTypes.STRING,
      score:DataTypes.INTEGER
  },
  {
    timestamps: false
  }
  );
  Attribute.associate = function(models) {
    // Associating Questions with choices
    Attribute.belongsTo(models.breed);
  };
    return Attribute;
  };