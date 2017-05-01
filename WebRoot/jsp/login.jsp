<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>登录</title>

<link href="./css/common.css" rel="stylesheet" type="text/css"/>
<link href="./css/login.css" rel="stylesheet" type="text/css"/>
<script language="JavaScript" src="./js/head.js"></script>

</head>
<body>
<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="http://localhost:8080/usedhouse/">
				<img src="./image/logo.jpg" alt="优优二手房"></img>
			</a>
		</div>
	</div>
	<div class="span10 last">
		<div class="topNav clearfix">
			<ul>
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="./login.html">登录</a>|
				</li>
				<li id="headerRegister" class="headerRegister" style="display: list-item;">
					<a href="./sighup.html">注册</a>|
				</li>
				<li>
					<a href="./membercenter.html">个人中心</a>
					|
				</li>
				<li>
					<a >买房指南</a>
					|
				</li>
				<li>
					<a>关于我们</a>
				</li>
			</ul>
		</div>
		
		<div class="cart">
			<a href="./myCollections.html">我的收藏</a>
		</div>
			<div class="phone">
				客服热线:
				<strong>96008/5322776</strong>
			</div>
	</div>
	
	<div class="span24">
		<ul class="mainNav">
			<li>
				<a href="./index.htm">首页</a>
				|
			</li>
			<li>
				<a href="./infomation.htm">房源</a>
				|
			</li>
			<li>
				<a >小区</a>
				|
			</li>
			<li>
				<a>地图找房</a>
				|
			</li>
			<li>
				<a >主题找房</a>
				|
			</li>
			<li>
				<a>闪电卖房</a>
				|
			</li>
			<li>
				<a>优秀经纪人</a>
				|
			</li>
		</ul>
	</div>
</div>

<div class="container login">
	<div class="span12">
		<div class="ad">
			<img src="./image/login.jpg" width="500" height="330" alt="房源样式" title="房源样式">
		</div>
	</div>
	
<div class="span12 last">
			<div class="wrap">
				<div class="main">
					<div class="title">
						<strong>会员登录</strong>USER LOGIN 
					</div>
					<form id="loginForm" action="${ pageContext.request.contextPath }/user_checkLogin.action" method="post" novalidate="novalidate">
						<table>
							<tbody><tr>
								<th>
										用户名/E-mail:
								</th>
								<td>
									<input type="text" id="username" value="yushuiting" name="username" class="text" maxlength="20">
									
									
								</td>
							</tr>
							<tr>
								<th>
									密&nbsp;&nbsp;码:
								</th>
								<td>
									<input type="password" id="password" name="password" value="123456" class="text" maxlength="20" autocomplete="off">
									<br />
									<% if(request.getAttribute("msg") != null) {
										out.print(request.getAttribute("msg"));
										}%>
										
								</td>
							</tr>
								<tr>
									<th>
										验证码:
									</th>
									<td>
										<span class="fieldSet">
											<input type="text" id="captcha" name="captcha" class="text captcha" maxlength="4" autocomplete="off"><img id="captchaImage" class="captchaImage" src="" title="点击更换验证码">
										</span>
									</td>
								</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<label>
										<input type="checkbox" id="isRememberUsername" name="isRememberUsername" value="true">记住用户名
									</label>
									<label>
										&nbsp;&nbsp;<a >找回密码</a>
									</label>
								</td>
							</tr>
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="登 录">
								</td>
							</tr>
							<tr class="register">
								<th>&nbsp;
									
								</th>
								<td>
									<dl>
										<dt>还没有注册账号？</dt>
										<dd>
											立即注册即可体验在线购物！
											<a href="./会员注册.htm">立即注册</a>
										</dd>
									</dl>
								</td>
							</tr>
						</tbody></table>
					</form>
				</div>
			</div>
		</div>
	</div>
	
</div>
	
	
<div class="container footer">

	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a >关于我们</a>
						|
					</li>
					<li>
						<a >联系我们</a>
						|
					</li>
					<li>
						<a >招贤纳士</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a >友情链接</a>
						|
					</li>
					<li>
						<a  target="_blank">支付方式</a>
						|
					</li>
					
					<li>
						<a>服务声明</a>
						|
					</li>
					<li>
						<a >广告声明</a>
						
					</li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2017-2027 优优二手房 版权所有</div>
	</div>
</div>
</body>
</html>