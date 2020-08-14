<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			*{
				margin: 0px;
				padding: 0px;
			}
					
			#login-main {
				    height: 560px;
				    position: relative;
				    top: -250px;
				}
			#login-main .bglink{
				display: block;
			    width: 100%;
			    height: 100%;
			    min-width: 1200px;
			    background-color: #1a1d23;
			    background-position:66% 33%;
			    position: absolute;
				/*background-image: url(img/carousel5.png);*/
			    z-index: 1;
			}
			.login-form {
				    width: 400px;
				    height: 390px;
				    padding-top: 30px;
				    background: #f6f6f7;
				    font-size: 12px;
				    color: #8c8c8c;
				    position: absolute;
				    top: 70px;
				    left: 50%;
				    margin-left: 200px;
				    z-index: 1;
				}
				.login-form-titleArea {
				    overflow: hidden;
				    margin: 0 40px 40px;
				}
				.login-form-title{
					font-size: 20px;
					    line-height: 1.1;
					    float: left;
					    width: 158px;
					    text-align: center;
				}
				.login-form-title.actived{
					color: #262626;
				}
				.login-form-Line{
					float: left;
				    margin-top: 2px;
				    font-size: 16px;
				    color: #8d8d8d;
				    width: 4px;
				}
				.login-form .inpurt-row{
					width: 300px;
					position: relative;
					overflow: hidden;
					margin: 10 auto 15px;
					
				}
				.login-form .input-box{
					position: relative;
					margin: 10px;
						
				}
				.login-form .inpurt-txt{
					width: 280px;
					height: 28px;
					padding: 5px 8px;
					border-radius: 2px;
					border: 1px solid #d9d9d9;
					font-size: 14px;
					padding-left: 20px;

				}
				#pwdToggle {
				    top: 14px;
				}
				.login-form .input-box .input-ico {
				    position: absolute;
				    right: 14px;
				    top: 12px;
				    cursor: pointer;
				}
				.icon-pwd-hide {
				    background-position: -132px -52px;
				    height: 10px;
				    width: 18px;
				}
				.login-form .input-row-auto{
					margin: 10px 50px 20px;
					height: 15px;
					
				}
				.login-form .check-lable input{
					margin: 0px 4px 0px 0px;
					vertical-align: middle;
				}
				.login-form .check-label span {
				    vertical-align: middle;
				}
				.login-form .input-row {
					    width: 300px;
					    position: relative;
					    overflow: hidden;
					    margin: 0 auto 15px;
					}
					.login-form .input-row-btn {
					    display: block;
					    width: 312px;
					    height: 40px;
					    margin-left: 55px;
					    line-height: 40px;
					    background: #ea413c;
					    text-align: center;
					    color: #fff;
					    font-size: 18px;
					    border-radius: 2px;
					    
					}
					.login-form .input-row-btn a{
						    color: rgba(255,255,255,0.5);
						  background: #ea413c !important;
						    text-decoration: none;
						}
						.login-form .row-link a{
							    color: #595959;
							    text-decoration: none;
							       color: #bfbfbf;
						 		   height: 20px;
						    		font-size: 14px;
						    		padding-top: 5px;
						}
					
						.login-form .row-link .l1{
							float: left;
							padding-left: 70px;
							
						}
						.login-form .row-link .l2{
							float: right;
							padding-right: 50px;
						}
						.login-form .row-links{
							text-decoration: none;
							padding-top: 30px;
							text-align: center;
						}
						.butt{
							position: relative;
							top:-250px;
						}
		</style>
	</head>
	<body>
		<div class="login">
			<iframe id="header" src="header.jsp" width="100%" height="380px" frameborder="0" scrolling="no"></iframe>
			<div id="login-main">
				<div class="bglink">
					<a href="#"><img src="img/carousel7.png"/></a></div>
				<div class="login-form"id="LoginForm">
					<div class="login-form-titleArea">
						<div class="login-form-title"id="actived">密码登录</div>
						<div class="login-form-Line">|</div>
						<div class="login-form-title">短信登录</div>
					</div>
					<form action="UserServlet?action=login" method="post">
					<div class="input-row">
							<div class="input-box">
								<input type="text" class="inpurt-txt" maxlength="11" name="phone" id="user"onmousemove="this.focus()" placeholder="请输入手机号" />
							</div>
						</div>
						<div class="input-row row-pwd">
							<div class="input-box">
								<input type="password" class="inpurt-txt" maxlength="16" name="password" id="pwd" onmousemove="this.focus()"placeholder="请输入密码" />
								<em class="input-ico ico-pwd-hide"id="pedToggle"></em>
							</div>
						</div>
						<%
							String exc=(String)session.getAttribute("exc");
						%>
						<p class="input-row-auto"><%=exc==null?"":exc %></p>
						<div class="input-row-auto">
							<label class="check-lable">
								<input type="checkbox" id="autologin" >
								<span>下次自动登录</span>
							</label>
							
						</div>
						<div >
						<input class="input-row-btn" type="submit" value="登录"/>
							
						</div>
					</form>
					
						<div class="row-link">
							<a class="l1" href="#">手机号快速注册</a>
							<a class="l2" href="#">找回密码</a>
						</div>
						<div class="row-links">
							<a href="">登录即表明您已经同意</a>
							<a class="l3" href="#">《用户协议》</a>
							<a href="">和</a>
							<a class="l4" href="#">《隐私政策》</a>
						</div>
				</div>
				
			</div>
			<div class="butt">
				<iframe id="foots" src="foots.jsp" width="100%" height="420px" frameborder="0" scrolling="no"></iframe>
			</div>
		</div>
	</body>
</html>
