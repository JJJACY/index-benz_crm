{% extends './layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/style.css">
{% endblock %}

{% block content %}
<div class="main-container">
	<div class="page-header">
		<nav class="page-header-nav">
			<a class="page-header-link" href="http://localhost:3000/">
				<img class="page-header-logo" src="https://www.mercedes-benz.com.cn/content/dam/mb-cn/footer/mercedes-benz-logo-desktop.png">		
			</a>
		</nav>
	</div>
	<div class="page-body">
		<div class="page-body-title">
			<span class="body_title">预约试驾</span>
		</div>
		<div class="page-body-container">
			<div class="page-body-content">
				<div class="page-body-content-form">
					<p class="page-body-descript">欢迎在线预约试驾。只需填写姓名及手机号，我们会第一时间与您联系，安排试驾事宜。</p>
					<input  id="userName" class="name-input" type="text" name="name" placeholder="你的姓名">
					<input id="userPhone" class="tel-input" type="text" name="name" placeholder="你的电话">
					<button id="userSubmit" class="click-btn">马上抢占名额</button>
				</div>
			</div>
		</div>
	</div>
	<footer class="page-footer">
		Copyright © 2019 极客学院体验技术部出品
	</footer>
</div>
{% endblock %}