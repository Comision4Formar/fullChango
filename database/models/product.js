'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Product extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Product.belongsTo(models.Category,{
        as : 'categoria',
        foreignKey : 'categoryId'
      })
      Product.belongsToMany(models.User,{
        as : 'compradores',
        through : 'carts',
        foreignKey : 'productId',
        otherKey : 'userId'
      })
    }
  };
  Product.init({
    title: DataTypes.STRING,
    description: DataTypes.STRING,
    image: DataTypes.STRING,
    price: DataTypes.DECIMAL,
    discount: DataTypes.INTEGER,
    categoryId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Product',
  });
  return Product;
};