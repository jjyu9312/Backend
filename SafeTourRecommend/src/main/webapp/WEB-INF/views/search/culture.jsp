<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라벨 선택</title>
</head>
<body>

</body> <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
  <style>
  html { 
  background: url("<c:url value="/resources/static/suwon.jpg"/>") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
  body {
  font:14px/1.8 Arial, Helvetica, sans-serif;
  /* background-image: url('static/suwon.jpg') ; */
  /* background-repeat : no-repeat; */
  /* background-size : cover; */
  
}

  
  .container {
    display: table;
  }
    
  .header {
    padding:30px 10px;
    text-align: center;
    margin-bottom: 5px;
    
  }

  .container {
  /* overflow: hidden; */
  margin : auto;
  width : 1500px;
  height : 830px;
  background-color : black;
  background-color: rgba( 0, 0, 0, 0.6 );
  border : solid white 7px;
  border-radius : 60px;
}



.content {
  float: left;
  width: 600px;
}

.thema{
  width: 1500px;
  height : 400px;
  /* background-color : black; */
  padding-top: 60px;
  
}
.thema_img {
  margin : auto;
  width : 600px;
  height : 350px;
  /* background-color : white;  */
}
.container1{
  width: 950px;
  height: 300px;
  /* background-color : grey; */
  margin : auto;
  padding-top : 20px;
}

.text{
  padding-top : 3px;
  margin : auto;
  text-align : center;
  padding-bottom : 13px;

}

.text >p {
  color : white;
  font-weight : bold;
  font-size : 17px;
  margin : auto;
  width : 280px;
  border : grey solid 2px;
  border-radius : 60px;
  line-height : 40px;
  font-family: 'Gothic A1', sans-serif;
  background-color : black;
  background-color: rgba( 0, 0, 0, 0.6);
}

.box {
  padding-top
  margin : auto;
  /* background-color : white;  */
  border-color : #2a2a32;
  font-family: 'Gothic A1', sans-serif;
}


.footer {
  padding:10px 7px;
  text-align: center;
  /* background: #eee; */
  margin-bottom: 7px;
  
}

.text_chbox{
  content: "";
  /* display: block; */
  /* position: absolute; */
  width: 15px;
  height: 15px;
  top: 0;
  left: -27px;
  border: 1px solid #7b7b7b;
  
}
.text_label{
  margin-right: 50px;
  float: left;
  margin-bottom: 20px;
  min-width : 120px;
  width : 160px;
  
}

.txt_style{
  /* 체크박스 텍스트 컬러 */
  
  color :#ffffff;
  font-size : 20px;
  display : inline-block;
  inlineheight : 18px;
  margin-left : 20px;
  position : relative;
  text-align : left;
  

}

ul.list_chk {
  list-style-type : none;
  margin-left : 30px;
  /* margin : auto; */
}

input[type=submit] { 
  width: 25%; 
  /* background-color: #0f4c81;  */
  background-color: #005baf;
  color: white; 
  padding: 10px 10px; 
  margin: auto; 
  border: none; 
  border-radius: 10px; 
  cursor: pointer;
  font-family: 'Gothic A1', sans-serif;
  /* vertical-align: middle;  */
}

.buttonHolder{ 
  text-align: center; }



  </style>
  
</head>
<body>
  <div class="frame">
   <div class="header">
     <div class="logo"></div>
   </div>
   <div class="container">
     <div class="thema">
       <!-- 테마 이미지 들어가는 부분 -->
       <div class ="thema_img"><img src="<c:url value="/resources/static/palace.png"/>" width="600" height="350" / >
            
       </div>
       
     </div>
     <div class="container1">
       <div class="text"><p>추가 라벨을 선택해 주세요</p></div>
    
     <div class="box">
       <ul class="list_chk">
         
         
         <li>
       
      <form method="POST" action="label/tour">
        <label for="boardHeadText1" class="text_label">
          <input type="checkbox" name="text_label_1" id="text_label1" class="text_chbox" value="자연"/>
          <span class ="txt_style">자연</span>
        </label>
        
        <label for="boardHeadText2" class="text_label">
          <input type="checkbox" name="text_label_2" id="text_label2" class="text_chbox" value="힐링"/>
          <span class ="txt_style">힐링</span>
        </label>
        
        <label for="boardHeadText3" class="text_label">
          <input type="checkbox" name="text_label_3" id="text_label3" class="text_chbox" value="Architecture"/>
          <span class ="txt_style">건축</span>
        </label>
        
        <label for="boardHeadText4" class="text_label">
          <input type="checkbox" name="text_label_4" id="text_label4" class="text_chbox" value="관광지"/>
          <span class ="txt_style">관광지</span>
        </label>
        
        
        </li>
        <li>
        <label for="boardHeadText5" class="text_label">
          <input type="checkbox" name="text_label_5" id="text_label5" class="text_chbox" value="산책"/>
          <span class ="txt_style">산책</span>
        </label>
          
        <label for="boardHeadText6" class="text_label">
          <input type="checkbox" name="text_label_6" id="text_label6" class="text_chbox" value="도심"/>
          <span class ="txt_style">도심</span>
        </label>
        
        <label for="boardHeadText7" class="text_label">
          <input type="checkbox" name="text_label_7" id="text_label7" class="text_chbox" value="Landmark"/>
          <span class ="txt_style">명소</span>
        </label>
          
        <label for="boardHeadText8" class="text_label">
          <input type="checkbox" name="text_label_8" id="text_label8" class="text_chbox" value="Historic"/>
          <span class ="txt_style">역사적</span>
        </label>
            
        </li>
    
        <li>
   
       <label for="boardHeadText9" class="text_label">
         <input type="checkbox" name="text_label_9" id="text_label9" class="text_chbox" value="Sky"/>
         <span class ="txt_style">하늘</span>
       </label>
       
       <label for="boardHeadText10" class="text_label">
         <input type="checkbox" name="text_label_10" id="text_label10" class="text_chbox" value="Temple"/>
         <span class ="txt_style">사찰</span>
       </label>
       
       <label for="boardHeadText11" class="text_label">
         <input type="checkbox" name="text_label_11" id="text_label11" class="text_chbox" value="근교"/>
         <span class ="txt_style">근교</span>
       </label>
       
       <label for="boardHeadText12" class="text_label">
         <input type="checkbox" name="text_label_12" id="text_label12" class="text_chbox" value="City"/>
         <span class ="txt_style">도시</span>
       </label>
       </li>
      </ul>
        <div class="buttonHolder">
        <input type="submit" value="Submit"></div>

       </form>
       
     </div>
    </div>
   </div>
   <div class="footer">
</div>

   </div>
  
  
  
</body>
</html>