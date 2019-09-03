var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');
var authController = require('./../controllers/auth.js');
var authMiddleware = require('./../middlewares/auth.js');
var clueController = require('./../controllers/clue.js')
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});


router.get('/admin/login',authController.renderLogin);


router.get('/admin/user', authMiddleware.mustLogin ,userController.show);


router.get('/admin/user/create', authMiddleware.mustLogin ,userController.renderUserCreate);



router.get('/admin/user/:id/edit', authMiddleware.mustLogin , userController.edit);


router.get('/admin/clue', clueController.show);

router.get('/admin/clue/:id', authMiddleware.mustLogin, clueController.log);

/*退出时的渲染页面*/
router.get('/api/logout',function(req, res ,next){
	res.render('admin/login');
})


module.exports = router;
