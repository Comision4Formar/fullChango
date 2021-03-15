'use strict';

const faker = require('faker');
const bcrypt = require('bcrypt');

const usuarios = [];

for (let index = 0; index < 20; index++) {
  var usuario = {
    name : faker.name.findName(),
    email : 'test@fullchango.com',
    pass : bcrypt.hashSync('123123',12),
    avatar : faker.image.avatar(),
    rol : 'user',
    createdAt : new Date
  }
  
  usuarios.push(usuario)
}
var admin = {
    name : 'Admin',
    email : 'admin@fullchango.com',
    pass : bcrypt.hashSync('123123',12),
    avatar : faker.image.avatar(),
    rol : 'admin',
    createdAt : new Date
}
usuarios.push(admin)

module.exports = {
  up: async (queryInterface, Sequelize) => {
    
      await queryInterface.bulkInsert('users',usuarios, {});

  },

  down: async (queryInterface, Sequelize) => {
  
      await queryInterface.bulkDelete('users', null, {});
     
  }
};
