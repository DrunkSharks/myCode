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
					
			#Register-main {
				    height: 560px;
				    position: relative;
				   
					top:-250px;
				}
			#Register-main .bglink{
				display: block;
			    width: 100%;
			    height: 100%;
			    min-width: 1200px;
			    background-color: #1a1d23;
			    background-position:66% 33%;
			    position: absolute;
				/*background-image: url(img/recommend1.png)no-repeat;*/
			    z-index: 1;
			}
			.Register-form {
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
				.Register-titleArea {
				   /*border: 1px solid red;*/
				}
				.Register-form-title{
					font-size: 25px;
					    line-height: 1.1;
					    margin-left: 120px;
					   /*border: 1px solid blue;*/
					    width: 158px;
					    text-align: center;
				}
	
				
				.Register-form .input-row{
					width: 300px;
					position: relative;
					overflow: hidden;
					margin: 20 auto 15px;
					
					
				}
				.Register-form .input-box{
					position: relative;
					border: 1px solid #d9d9d9;
					
						
				}
				.Register-form .input-txt{
					width: 280px;
					height: 28px;
					padding: 5px 8px;
					border-radius: 2px;
					border: 1px solid #d9d9d9;
					font-size: 14px;
					padding-left: 10px;

				}
				#pwdToggle {
				    top: 14px;
				}
				.Register-form .input-box .input-ico {
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
				.Register-form .input-row-auto{
					margin: 10px 50px 20px;
					height: 15px;
					
				}
				.Register-form .check-lable input{
					margin: 0px 4px 0px 0px;
					vertical-align: middle;
				}
				.Register-form .check-label span {
				    vertical-align: middle;
				}
				.Register-form .input-row {
					    width: 300px;
					    position: relative;
					    margin: 13px auto 10px;
					}
					.Register-form .input-box{
						width: 300px;
						border: 1px solid #d9d9d9;
					}
					.Register-form .input-txt-send{
						    width: 200px;
						    height: 28px;
						    padding: 5px 8px;
						    border: 1px solid #d9d9d9;
						    font-size: 14px;
					}
					.send-text{
						text-align: center;
						font-size: 13px;
						color: darkgray;
						border: 1ps solid #D9D9D9;
						text-decoration: none;
						
					}
					
			
					.Register-form .input-row-btn {
					    display: block;
					    width: 300px;
					    height: 40px;
					    margin: 20px 50px 10px 50px;
					    line-height: 40px;
					    background: #ea413c;
					    text-align: center;
					    color: #fff;
					    font-size: 18px;
					     
					    
					}
					.Register-form .input-row-btn a{
						    color: rgba(255,255,255,0.5);
						    text-decoration: none;
						   
						}
						.row-confirm{
							text-align: center;
						
						}
					.Register-form .row-confirm #confirm{
						width: 15px;
						height: 15px;
					}
						.Register-form .row-confirm a{
							text-decoration: none;
							font-size: 13px;
							color: darkgrey;
						}
						.row-base{
							text-align: center;
							margin-top: 60px;
						}
						.row-base a{
								text-decoration: none;
								font-size: 14px;
								
						}
						.butt{
							position: relative;
							top:-250px;
						}
						
		</style>
	</head>
	<body>
		<div class="Register">
			<iframe id="header" src="header.jsp" width="100%" height="380px" frameborder="0" scrolling="no"></iframe>
			<div id="Register-main">
				<div class="bglink">
					<a href="#"><img src="img/carousel7.png"/></a></div>
				<div class="Register-form"id="RegisForm">
					<div class="Register-titleArea">
						<div class="Register-form-title"id="actived">注册</div>
					</div>
					<form action="UserServlet?action=save" method="post">
					
						<div class="input-row">
							<div class="input-box">
								<input type="text" class="input-txt" id="user" name="phone" onmousemove="this.focus()" placeholder="请输入手机号" />
							</div>
						</div>
					<div class="input-row">
							<div class="input-box">
								<input type="text" class="input-txt-send" id="user" name="yzm" onmousemove="this.focus()" placeholder="请输入验证码" />
								<a href="#" class="send-text">xyya</a>
							</div>
					</div>
					<div class="input-row row-pwd">
							<div class="input-box">
								<input type="password" class="input-txt" id="pwd" name="password" maxlength="16" onmousemove="this.focus()" placeholder="设置6-16位密码（区分大小写）" />
								<em class="input-ico ico-pwd-hide"id="pedToggle"></em>
							</div>
						</div>
						<%
							String exc=(String)session.getAttribute("exc");
						%>
						<p class="input-row-auto"><%=exc==null?"":exc %></p>
						<input type="submit" class="input-row-btn btn-text" value="快速注册"/>
						
					</form>
					
						
						<div class="row-confirm">
							<input type="checkbox" name="confirm" id="confirm" value="" />
							<a href="">登录即表明您已经同意</a>
							<a class="l3" href="#">《用户协议》</a>
							<a href="">和</a>
							<a class="l4" href="#">《隐私政策》</a>
						</div>
						<div class="row-base">
							<a href="#">已有账号？&nbsp;去登陆</a>
						</div>
				</div>
				
			</div>
			<div class="butt">
			<iframe id="foots" src="foots.jsp" width="100%" height="420px" frameborder="0" scrolling="no"></iframe>
			</div>
		</div>
	</body>
</html>
