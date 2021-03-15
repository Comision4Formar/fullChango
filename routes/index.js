var express = require('express');
var router = express.Router();

const {home,buy} = require('../controllers/indexController')

/* GET home page. */
router.get('/', home);
router.get('/buy',buy);

module.exports = router;
