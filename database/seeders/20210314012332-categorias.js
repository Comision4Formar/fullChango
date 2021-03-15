'use strict';

const faker = require('faker');

const categorias = [];

for (let index = 0; index < 12; index++) {

  var categoria = {
    name : faker.music.genre(),
    createdAt : new Date
  }
  categorias.push(categoria)
}

module.exports = {
  up: async (queryInterface, Sequelize) => {
    
      await queryInterface.bulkInsert('categories', categorias, {});

  },

  down: async (queryInterface, Sequelize) => {
  
      await queryInterface.bulkDelete('categories', null, {});
     
  }
};
