const User = require('./../models/user.js');
const authCodeFunc = require('./../utils/authCode.js');

const authController = {
	login: async function( req, res , next){
		let phone = req.body.phone;
		let password = req.body.password;

		if( !phone || ! password){
			res.json({ code: 0 ,data: 'params empty'});
			return
		}
    try{
    	const users = await User.select({ phone ,password});
    	const user = users[0];
    	if(user){
    		let auth_Code = phone +'\t'+ password +'\t'+ user.id +'\t'+ user.role;
    		auth_Code = authCodeFunc(auth_Code,'ENCODE');

    		res.cookie('ac',auth_Code , {maxAge: 24* 60 * 60 * 1000, httpOnly: true });
    		res.json({ code : 200 , message: ' 登录成功！'})
    	}else{
    		res.json({ code : 0 , message: '登陆失败，没有此用户！'})
    	}
    }catch(e){
    	res.json({ code: 0 ,message: '系统问题请联系管理员'})
    }
	},
	renderLogin: async function( req , res , next ){
		if(res.locals.isLogin){
      res.redirect('/admin/clue')
      return
    }
    res.render('admin/login')
	}
}


module.exports  = authController;