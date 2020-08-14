$(function() {
				var flag = 0;
				var num = 1;
				var tabnum=1;
				$(".personal-left ul li").mouseover(function() {
					var num1 = $(this).attr("id");

					if(num != num1) {
						$(this).children().children().next().next().addClass("redname");
						if(num1 == 1) {
							$(this).children().children().next().removeClass("index-img");
							$(this).children().children().next("i").addClass("index-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-index").removeClass("yincang");
								$(".right-index").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
									
								}
								if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
									
								}
								if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
									
								}
								if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
									
								}
								if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
									
								}
								if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
									
								}
								num = num1;
								flag = 1;
							});
						} else if(num1 == 2) {
							$(this).children().children().next().removeClass("order-img");
							$(this).children().children().next("i").addClass("order-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-order").removeClass("yincang");
								$(".right-order").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								else if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								else if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
								}
								else if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
								}
								else if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
								}
								else if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
								}
								else if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
								}
								else if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
								}
								num = num1;
								flag = 1;
							});
						} else if(num1 == 3) {
							$(this).children().children().next().removeClass("yushou-img");
							$(this).children().children().next("i").addClass("yushou-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-yushou").removeClass("yincang");
								$(".right-yushou").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								else if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								else if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
								}
								else if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
								}
								else if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
								}
								else if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
								}
								else if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
								}
								else if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
								}
								num = num1;
								flag = 1;
							});
						} else if(num1 == 4) {
							$(this).children().children().next().removeClass("shouhou-img");
							$(this).children().children().next("i").addClass("shouhou-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-shouhou").removeClass("yincang");
								$(".right-shouhou").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								else if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								else if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
								}
								else if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
								}
								else if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
								}
								else if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
								}
								else if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
								}
								else if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
								}
								num = num1;
								flag = 1;
							});
						} else if(num1 == 5) {
							$(this).children().children().next().removeClass("gift-img");
							$(this).children().children().next("i").addClass("gift-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-gift").removeClass("yincang");
								$(".right-gift").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								else if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								else if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
								}
								else if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
								}
								else if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
								}
								else if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
								}
								else if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
								}
								else if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
								}
								num = num1;
								flag = 1;
							});
						} else if(num1 == 6) {
							$(this).children().children().next().removeClass("quan-img");
							$(this).children().children().next("i").addClass("quan-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-quan").removeClass("yincang");
								$(".right-quan").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								else if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								else if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
								}
								else if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
								}
								else if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
								}
								else if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
								}
								else if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
								}
								else if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
								}
								num = num1;
								flag = 1;
							});
						} else if(num1 == 7) {
							$(this).children().children().next().removeClass("address-img");
							$(this).children().children().next("i").addClass("address-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-address").removeClass("yincang");
								$(".right-address").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								else if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								else if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
								}
								else if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
								}
								else if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
								}
								else if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
								}
								else if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
								}
								else if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
								}
								num = num1;
								flag = 1;
							});
						} else if(num1 == 8) {
							$(this).children().children().next().removeClass("scode-img");
							$(this).children().children().next("i").addClass("scode-img1");
							$(this).click(function() {
								$(".personal-left ul li i[id='bor']").removeClass("red-border-left");
								$(this).children().children("i[id='bor']").addClass("red-border-left");
								$(".personal-left ul li span").removeClass("redname");
								$(".personal-left ul li span").addClass("name");
								$(this).children().children().next().next().addClass("redname");
								$(".personal-right").children().addClass("yincang");
								$(".right-scode").removeClass("yincang");
								$(".right-scode").addClass("xianshi");
								if(num == 1&&num != num1) {
									$("#1").children().children().next().removeClass("index-img1");
									$("#1").children().children().next("i").addClass("index-img");
								}
								else if(num == 2&&num != num1) {
									$("#2").children().children().next().removeClass("order-img1");
									$("#2").children().children().next("i").addClass("order-img");
								}
								else if(num == 3&&num != num1) {
									$("#3").children().children().next().removeClass("yushou-img1");
									$("#3").children().children().next("i").addClass("yushou-img");
								}
								else if(num == 4&&num != num1) {
									$("#4").children().children().next().removeClass("shouhou-img1");
									$("#4").children().children().next("i").addClass("shouhou-img");
								}
								else if(num == 5&&num != num1) {
									$("#5").children().children().next().removeClass("gift-img1");
									$("#5").children().children().next("i").addClass("gift-img");
								}
								else if(num == 6&&num != num1) {
									$("#6").children().children().next().removeClass("quan-img1");
									$("#6").children().children().next("i").addClass("quan-img");
								}
								else if(num == 7&&num != num1) {
									$("#7").children().children().next().removeClass("address-img1");
									$("#7").children().children().next("i").addClass("address-img");
								}
								else if(num == 8&&num != num1) {
									$("#8").children().children().next().removeClass("scode-img1");
									$("#8").children().children().next("i").addClass("scode-img");
								}
								num = num1;
								flag = 1;
							});
						}
					}
				});
				$(".personal-left ul li").mouseout(function() {
					var num1 = $(this).attr("id");

					if(num != num1 && flag != 1) {
						$(this).children().children().next().next().removeClass("redname");
					}

					if(num != num1 && flag != 1) {
						if(num1 == 1) {
							$(this).children().children().next().removeClass("index-img1");
							$(this).children().children().next("i").addClass("index-img");
						}
						if(num1 == 2) {
							$(this).children().children().next().removeClass("order-img1");
							$(this).children().children().next("i").addClass("order-img");
						}
						if(num1 == 3) {
							$(this).children().children().next().removeClass("yushou-img1");
							$(this).children().children().next("i").addClass("yushou-img");
						}
						if(num1 == 4) {
							$(this).children().children().next().removeClass("shouhou-img1");
							$(this).children().children().next("i").addClass("shouhou-img");
						}
						if(num1 == 5) {
							$(this).children().children().next().removeClass("gift-img1");
							$(this).children().children().next("i").addClass("gift-img");
						}
						if(num1 == 6) {
							$(this).children().children().next().removeClass("quan-img1");
							$(this).children().children().next("i").addClass("quan-img");
						}
						if(num1 == 7) {
							$(this).children().children().next().removeClass("address-img1");
							$(this).children().children().next("i").addClass("address-img");
						}
						if(num1 == 8) {
							$(this).children().children().next().removeClass("scode-img1");
							$(this).children().children().next("i").addClass("scode-img");
						}
					}
					flag = 0;
				});

				$(".tabs a").click(function(){
					$(this).parent().children().removeClass("redtab");
					$(this).addClass("redtab");
					if($(this).attr("id")==1){
						$(".tip").html("您当前还没有订单哦~");
						tabnum=1;
					}
					else if($(this).attr("id")==2){
						$(".tip").html("您当前还没有待付款订单哦~");
						tabnum=2;
					}
					else if($(this).attr("id")==3){
						$(".tip").html("您当前还没有待发货订单哦~");
						tabnum=3;
					}
					else if($(this).attr("id")==4){
						$(".tip").html("您当前还没有已发货订单哦~");
						tabnum=4;
					}
					else if($(this).attr("id")==5){
						$(".tip").html("您当前还没有已完成订单哦~");
						tabnum=5;
					}
					else if($(this).attr("id")==6){
						$(".tip").html("您当前还没有待评价订单哦~");
						tabnum=6;
					}
				});
				
				$(".addaddress").mouseover(function(){
					$(this).children().removeClass("addimg");
					$(this).children().addClass("addimg1");
					$(this).removeClass("addaddress");
					$(this).addClass("addaddress1");
				}).mouseout(function(){
					$(this).children().removeClass("addimg1");
					$(this).children().addClass("addimg");
					$(this).removeClass("addaddress1");
					$(this).addClass("addaddress");
				});
			});
			
				