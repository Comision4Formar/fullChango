'use strict';

const faker = require('faker');

const productos = [];

for (let index = 0; index < 100; index++) {

  var producto = {
    title : faker.commerce.productName(),
    description : faker.commerce.productDescription(),
    image : faker.image.image(),
    price : faker.random.float({min:100,max:999}),
    discount : faker.random.number({max:30}),
    categoryId: faker.random.number({min:1,max:12}),
    createdAt : new Date
  }
  productos.push(producto)
}

module.exports = {
  up: async (queryInterface, Sequelize) => {
    
      await queryInterface.bulkInsert('products', productos, {});

  },

  down: async (queryInterface, Sequelize) => {
  
      await queryInterface.bulkDelete('products', null, {});
     
  }
};
