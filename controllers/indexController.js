const db = require('../database/models');
const {Op,Sequelize} = require('sequelize')

module.exports = {
    home : (req,res) => {
        let destacados = db.Product.findAll({
            limit : 4,
            order: Sequelize.literal('rand()'),
            where : {
                discount : {
                    [Op.like] :0
                }
            }
        });
        let ofertas = db.Product.findAll({
            where : {
                discount : {
                    [Op.gt] : 20
                }
            },
            limit : 4,
            order: Sequelize.literal('rand()')
        })
        let categorias = db.Category.findAll();

        Promise.all([destacados,categorias,ofertas])
        .then(([destacados,categorias,ofertas])=> {
           res.render('index',{
               destacados,
               categorias,
               ofertas
           })
        })
    },
    buy : (req,res) => {
        res.render('compra')
    }
}