'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('carts', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      userId: {
        type: Sequelize.INTEGER,
        references : {
          model :{
            tableName : 'users'
          },
          key : 'id'
        }
      },
      productId: {
        type: Sequelize.INTEGER,
        references : {
          model :{
            tableName : 'products'
          },
          key : 'id'
        }
      },
      amount: {
        type: Sequelize.INTEGER
      },
      order: {
        type: Sequelize.INTEGER
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('carts');
  }
};