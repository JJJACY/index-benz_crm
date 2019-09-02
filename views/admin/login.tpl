{% block css %}
<title>梅赛德斯-奔驰</title>
{% endblock %}

{% block content %}
<link rel="stylesheet" type="text/css" href="./../stylesheets/login.css">
{% endblock %}

{% block js %}
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
		<input class="name-input" type="text" name="name" placeholder="请输入你的手机">
		<input class="tel-input" type="text" name="name" placeholder="请输入你的密码">
		<button class="click-btn">马上登录</button>
	</div>
</div>
<footer class="page-footer">
	Copyright © 2019 极客学院体验技术部出品
</footer>
{% endblock %} 