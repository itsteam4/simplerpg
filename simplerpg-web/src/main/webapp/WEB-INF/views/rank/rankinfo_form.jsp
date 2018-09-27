<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body >
<!-- background:url('resources/image/rank/bg_hope.jpg'); -->
<div class="container" style=" margin-bottom:40px">

	<div class="row" id="second" style="background:url('resources/image/rank/bg_hope_use_area.png'); background-size:100%; margin-top:50px;">
		<div class="col-md-2" style="padding-top:20px;padding-right:0px;padding-bottom:20px; padding-left:70px;">
			<div>
				<img src="resources/image/rank/DrawingImgbyID.aspx.png" alt="character" width="100px" height="140px">
			</div>
			
		</div>
		
		<div class="col-md-2" style="padding-top:35px; padding-right:30px; padding-bottom:0px; padding-left:0px;">
				<dl>
		            <dt class="ico_hope_name">
		            	<img src="resources/image/rank/ico_hope_name.png" alt="characname" width="22px" height="22px">
		            	캐릭터명
	            	</dt>
		            <dd>${members.id}</dd>
		            
		            <img src="resources/image/rank/bg_use_info_bar.png" alt="bar" width="140px">
		            
		            <dt class="ico_server">
		            	<img src="resources/image/rank/ico_server.png" alt="server" width="22px" height="22px">
		            	활동 서버</dt>
		            <dd>용문동</dd>
		        </dl>
		</div>
		
			<div class="col-md-6">
			<form >
			<c:choose>
            		<c:when test="${sessionid == null}">
            			<div style="padding-top:20px; padding-right:300px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							<label>한줄 인사말</label>
						</div>
					</c:when>
            		<c:when test="${(sessionid != null) && (members.id != sessionid)}">
            			<div style="padding-top:20px; padding-right:300px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							<label>한줄 인사말</label>
						</div>
            		</c:when>
            		<c:when test="${(sessionid != null)&&(members.id==sessionid)&&(rankinfos.id == null)}">
            			<div style="padding-top:20px; padding-right:280px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							
							<label>한줄 인사말</label>
							<button name="updatebtn" class="insertbtn" type="button" 
							onclick="insertGreeting"
							style="background:url('resources/image/rank/btn_modify.gif') no-repeat 0 0; 
							width:44px; height:18px; border:none; padding:0;vertical-align: middle; cursor:pointer; ">
							</button> 
						</div>
            		</c:when>
            		<c:when test="${(sessionid != null)&&(members.id==sessionid)&&(rankinfos.id !=null)}">
            			<div style="padding-top:20px; padding-right:280px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							
							<label>한줄 인사말</label>
							<button name="updatebtn" class="updatebtn" type="button" 
							style="background:url('resources/image/rank/btn_modify.gif') no-repeat 0 0; 
							width:44px; height:18px; border:none; padding:0;vertical-align: middle; cursor:pointer; ">
							</button> 
							
						</div>
            		</c:when>
            		<c:otherwise>
            			<div style="padding-top:20px; padding-right:350px; padding-bottom:0px; padding-left:0px" >
							<img src="resources/image/rank/ico_hope_greeting.png" alt="server" width="22px" height="22px">
							<label>한줄 인사말</label>
						</div>
            		</c:otherwise>
            	</c:choose>
			<div style="padding-top:5px; padding-right:0px; padding-bottom:0px; padding-left:40px">
				<input type="text" id="id" name="id" value="${sessionid}" style="display:none;">
				<textarea class="form-control" rows="3" id="greeting" name="greeting"
				>${rankinfos.greeting}</textarea>
			</div>
			</form>
		</div>
		
		
		
	</div>
	<!--경계-------------------------------------------------------- ------------ -->
	<!--경계-------------------------------------------------------- ----------- -->
	<!--경계-------------------------------------------------------- -------------- -->
	<!--경계-------------------------------------------------------- ---------------- -->
	<div class="" id="" style =" margin-top:50px; margin-bottom:15px; margin-left:25px; ">
			<div style="padding-right:944px; color:#685e60; font-size:18px;font-weight:normal;">
				<img src="resources/image/rank/ico_hope_stit.png" alt="characterinfo" width="22px" height="22px">
				캐릭터
			</div>
	</div>
	
	
	<div class="row" id="third" style =" margin-top:0px; " >
		<div class="col-md-2">
				<div class="pull-left">
				<ul class="" style="width:347px; height:97px;line-height: 97px;margin:2px 0 0 2px; list-style:none; ">
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">레벨</strong>
                        <img src="resources/image/rank/ico_hope_level.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">736</span>
                    </li>
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">직업</strong>
                        <img src="resources/image/rank/ico_hope_job.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">전사</span>
                    </li>
                </ul>
			</div>
		</div>
		
		<div class="col-md-2" style="margin-left:149px">
				<div class="pull-left">
				<ul class="" style="width:347px; height:97px;line-height: 97px;margin:2px 0 0 2px; list-style:none; ">
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">랭킹</strong>
                        <img src="resources/image/rank/ico_hope_ranking.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">1</span>
                    </li>
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">국가</strong>
                        <img src="resources/image/rank/ico_hope_country.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">고구려</span>
                    </li>
                </ul>
			</div>
		</div>
		
		<div class="col-md-2" style="margin-left:149px">
				<div class="pull-left">
				<ul class="" style="width:347px; height:97px;line-height: 97px;margin:2px 0 0 2px; list-style:none; ">
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">승급차수</strong>
                        <img src="resources/image/rank/ico_hope_promotion.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">7</span>
                    </li>
                    <li class="pull-left" style="background-color:#E8E4DF; width: 347px; height: 97px;line-height: 97px;margin: 2px 0 0 2px; ">
                        <strong class="pull-left" style=" width: 119px; font-size: 16px; text-align: center; color: #74686b;">부부</strong>
                        <img src="resources/image/rank/ico_hope_couple.png" class="pull-left" alt="characterinfo" width="50px" height="95px"
                        style="padding-top:5px">
                        <span class="system" style=" width: 194px; margin: 0 0 0 34px; font-size: 25px; text-align: center; color: #8a3a3a;">없음</span>
                    </li>
                </ul>
			</div>
		</div>
	</div>
	<!--경계-------------------------------------------------------- ------------ -->
	<!--경계-------------------------------------------------------- ----------- -->
	<!--경계-------------------------------------------------------- -------------- -->
	<!--경계-------------------------------------------------------- ---------------- -->
	<div class="row" id="third" style =" margin-top:50px; margin-bottom:15px; margin-left:45px;">
			<div style="padding-right:900px; color:#685e60; font-size:18px;font-weight:normal;">
				<img src="resources/image/rank/ico_hope_stit.png" alt="characterinfo" width="22px" height="22px">
				캐릭터 아이템
			</div>
	</div>
	
	
	
	
	
	<div class="row" style="margin-left:35px;">
	
	<div class="pull-left" style="background-color:#ded9d1; width:249px; height:357px">
         <div class="pull-left" style="background:url('resources/image/rank/bg_equip2.jpg'); width:192px; height:289px; margin:36px 0 0 28px;">
         	<ul class="" style="width:192px; height:289px; list-style:none; padding:15px 5px 0 15px;">
         		 <li class="pull-left" style="; width:54; height:52px;">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6365.png" alt="고대마령의암막 ">
         		 	</a>
         		 </li>
         		 
         		 
         		 <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5157.png" alt="용마제십검" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5622.png" alt="태광천신신복" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6343.png" alt="고대마령의단검">
         		 	</a>
         		 </li>
         		 
         		 <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6365.png" alt="고대마령의암막 ">
         		 	</a>
         		 </li>
         		 
         		 <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px; padding-left:15px;" src="http://s.nx.com/S2/Game/baram/2016/itemImage/item6000/6365.png" alt="고대마령의암막 ">
         		 	</a>
         		 </li>
         		 
         		  <li class="pull-left" style="; width:54; height:52px; ">
         		 	<a href="">
         		 		<img style="padding-top:5px"src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5766.png" alt="청의비녀" >
         		 	</a>
         		 </li>
         		 <li class="pull-left" style="padding-left:10px; width:54; height:52px; ">
         		 	<a href="">
         		 		<img src="http://s.nx.com/S2/Game/baram/2016/itemImage/item5000/5623.png" alt="태광천신금잠" >
         		 	</a>
         		 </li>
         	</ul> 
         </div>	
         </div>
         
         	<div class="pull-left" style ="background-color:#e8e4df; width:795px; height:357px">
		         <div style="padding-top:30px; padding-left:50px;">
		         	<img class="pull-left" src="resources/image/rank/ico_item01.png" alt="아이템모음" >
		         	<label class="pull-left" style="font-size:23px; color:rgb(72,65,66); font-weight:normal;
		         	padding-left:6px; " >일반 장착</label>
		         </div>
		         
		         <div class="pull-left" style="margin:14px 0 0 25px;">
	         		<ul class="pull-left" style=" list-style:none; width:770px; height:246px;
	         		overflow:hidden; padding:0 0 0 0; ">
	         		
	         			<li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px; color:rgb(104,94,96);  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 목/어깨장식</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 투구</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 얼굴장식</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 무기</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 갑옷</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 방패/보조무기</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 망토</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 신발</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 세트옷</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">오른손</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">왼손</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px; border-collapse: collapse;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">보조 1</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">보조2</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
                        <li class="pull-left" style="width:357px; height:36px; border-top:1px solid #fff; border-bottom:1px solid #fff; 
	         			font-size:14px;  margin-left:20px; border-collapse: collapse;">
                            <em class="pull-left" style="width:160px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:0 7px;
                            ">일반 장신구</em>
                            <span class="pull-left" style="width:184px; height:34px;
                            background:url('resources/image/rank/ico_chr_item.png')no-repeat;
                            background-position:10px 7px; border-left:1px solid #fff;
                            ">사색인장</span>
                        </li>
	         		</ul>
         		</div>
         	</div>
	</div>
	
	<!--경계-------------------------------------------------------- ------------ -->
	<!--경계-------------------------------------------------------- ----------- -->
	<!--경계-------------------------------------------------------- -------------- -->
	<!--경계-------------------------------------------------------- ---------------- -->
	<c:choose>
  		<c:when test="${sessionid == null}">
  			<div class="row" id="five" style ="margin-top:50px; margin-left:45px;">
				<div style="padding-right:800px">
					<img src="resources/image/rank/ico_hope_stit.png" alt="characterinfo" width="22px" height="22px">
					<label style="font-size:18px; color:#685e60;">${members.id}님의 방명록</label>
				</div>
			</div>
			<div class="row" style="width:100%; height:82px; margin-left:45px;
				background:url('resources/image/rank/coment_bg02.png') no-repeat 0 0;">
		        <span class="pull-left" id="commentSpan" style="width:74px; height:82px; background:url('resources/image/rank/coment_count_bg.jpg')right center;
		        text-align:center">
		        	<strong style="line-height:82px;">0</strong>/200
		        </span>
		        <textarea class="pull-left" 
		        style="width:850px; height:80px; padding:6px 0 0 20px; background-color:#fff; margin-top:1px" 
		        name="txtComment" id="txtComment" cols="30" rows="10" placeholder="로그인하시면 방명록 등록이 가능합니다." disabled="disabled"></textarea>
		        <span class="pull-left" >
		        <a href="javascript:;" onclick="alert('로그인 후 이용 바랍니다.')">
		        <img src="resources/image/rank/coment_add_btn_on.jpg" alt="댓글등록">
		        </a>
		        </span>
		    </div>	
		</c:when>
		<c:otherwise>
		<form name = "number">
		
			<div class="row" id="five" style ="margin-top:50px; margin-left:45px;">
				<div style="padding-right:800px">
					<img src="resources/image/rank/ico_hope_stit.png" alt="characterinfo" width="22px" height="22px">
					<label style="font-size:18px; color:#685e60;">${members.id}님의 방명록</label>
				</div>
			</div>
			<div class="row" style="width:100%; height:82px; margin-left:45px;
				background:url('resources/image/rank/coment_bg02.png') no-repeat 0 0;">
		        <span class="pull-left" id="commentSpan" style="width:80px; height:82px; background:url('resources/image/rank/coment_count_bg.jpg')right center;
		        text-align:center">
		        	<input size=8 type="text" name="text2" 
		        	style="background-color:#dedede;border:none; padding:0;
		        	text-align:center; margin-top:26px;">
		        </span>
		        <input type="text" id="stanid" name="stanid" value="${members.id}" style="display:none;">
		        <textarea class="form-control"cols="25" rows="10" id="visitbook" name="visitbook"
		        onfocus="number_of_Characters()" 
		        style="float:left; width:850px; height:80px; padding:6px 0 0 20px; background-color:#fff; margin-top:1px" 
		        ></textarea>
		        <span class="pull-left" >
			        <a href="#" onclick="visitbook()">
			        <img src="resources/image/rank/coment_add_btn_on.jpg" alt="댓글등록">
			        </a>
		        </span>
		    </div>
		    </form>	
		</c:otherwise>
	</c:choose>
	    <div class="pull-left" style="margin-top:50px">
	    	<p style="widht:100%; font-size:14px; color:#7c7c7c;">총
	    	<span style="color:red">${rankvisitbooknumber.number}</span>
	    	개의 방명록이 있습니다.
	    	</p>
	    </div>
	    
	    <div>
				<table class="table">
					    <tbody>
					    <c:forEach var="rankvisitbooks" items="${rankvisitbooks}">
						      <tr>
						      	 <td style="color:#a18c6d;font-size:12px; width:200px;
						      	 padding-left:20px;
						      	 ">${rankvisitbooks.date}</td>
						         <td style="width:160px;">${rankvisitbooks.id}</td>
						         <td style="color:#797272; font-size:14px;
						         text-align:left; padding-left:50px;
						         ">${rankvisitbooks.visitbook}</td>
						         <c:choose>
						         	<c:when test="${rankvisitbooks.id==sessionid}">
							         <td>
							         	<span>
							         		<input type ="text" id="seq" name="seq" value="${rankvisitbooks.seq}" onclick="enrollDel(this.value)"
								         	 style="background:url('resources/image/rank/coment_del.jpg')no-repeat;text-indent: -9999px;
								         	 width:20px; height:20px; border:none; cursor:pointer;">
							         	</span>
							         </td>
							         </c:when>
							         <c:otherwise>
							         <td>
							         	<span>
							         	</span>
							         </td>
							         </c:otherwise>
						         </c:choose>
						      </tr>
					      </c:forEach>
				    </tbody>
				  </table>
		</div>
		<div class="row" style="margin-top: 50px">
		<label>페이지수</label>
						<c:forEach var="page" items="${pages}">
		 					<a href="selectedPage?page=${page}&id=${members.id}">[${page}]</a>&nbsp
		 				</c:forEach>
		</div>
	</div>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript"> 


function enrollDel(seq){
	var seq = seq
	var seqconfirm = confirm("삭제 하시겠습니까?")
	if(seqconfirm == true){
		$.ajax({
			type:'POST',
			data : {'seq':seq},
			datatype:'json',
			url : 'visitbookDel',
			success : function(data){
				location.reload();
			},
			error : function(xhr, status, error){
			}
		});
	}
}


function number_of_Characters() {
		
	var t1v = document.number.visitbook.value;
	var t2v = t1v.length;
		document.number.text2.value = t2v + "/200";
	if(t2v >= 200) {
		alert("더이상 입력할 수 없습니다.");
		document.number.visitbook.value = "";
	}
	setTimeout("number_of_Characters()" ,0);
}


	function visitbook(){
		var visitbook = document.getElementById("visitbook").value;
		var id = $('#id').val();
		var stanid = $('#stanid').val();
		
		$.ajax({
			type:'POST',
			data : {'id':id,
					'visitbook':visitbook,
					'stanid':stanid},
			datatype:'json',
			url : 'visitBook',
			success : function(data){
				document.number.visitbook.value = "";
				location.reload();
			},
			error : function(xhr, status, error){
			}
		});
	};
	$(document).ready(function(){
		document.number.text2.value = 0 + "/200";
		
		$('.updatebtn').on('click',function(){
			var greeting = document.getElementById("greeting").value;
			var id = $('#id').val();
			$.ajax({
				type:'POST',
				data : {'id':id,
						'greeting':greeting},
				datatype:'json',
				url : 'updateGreeting',
				success : function(data){
				},
				error : function(xhr, status, error){
				}
			});
			
		});
		$('.insertbtn').on('click',function(){
			var greeting = document.getElementById("greeting").value;
			var id = $('#id').val();
			$.ajax({
				type:'POST',
				data : {'id':id,
						'greeting':greeting},
				datatype:'json',
				url : 'insertGreeting',
				success : function(data){
					location.reload();
				},
				error : function(xhr, status, error){
				}
			});
		});
    });
	
</script>

</body>
</html>