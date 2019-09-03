{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" type="text/css" href="./../stylesheets/login.css">
{% endblock %}

{% block content %}
<header class="page-header">
	<nav class="page-header-nav">
		<a class="page-header-link" href="http://localhost:3000/">
			<img class="page-header-logo" src="https://www.mercedes-benz.com.cn/content/dam/mb-cn/footer/mercedes-benz-logo-desktop.png">		
		</a>
	</nav>
</header>
<div class="page-body">
	<div class="body-form">
		<p class="body-form-title">MERCEDS-BENZ</p>
		<input id="userPhone" class="name-input" type="text" placeholder="请输入你的手机">
		<input id="userPassword" class="tel-input" type="password"  placeholder="请输入你的密码">
		<button class="click-btn"   id="userSubmit"  >马上登录</button>
	</div>
</div>
<footer class="page-footer">
	Copyright © 2019 极客学院体验技术部出品
</footer>
{% endblock %} 



{% block js %}
<script src="/javascripts/jquery-3.3.1.min.js"></script>
<script src="/javascripts/login.js"></script>
{% endblock %}