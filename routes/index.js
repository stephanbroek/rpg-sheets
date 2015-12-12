var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/:system', function(req, res, next) {
  res.render('sheets/' + req.params.system);
});

module.exports = router;
