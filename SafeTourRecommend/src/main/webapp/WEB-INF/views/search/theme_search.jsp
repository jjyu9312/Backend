<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="app" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>내 주변 GAN찮은 여행지</title>
  <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
	<style>
		.background {
      		background: url("<c:url value="/resources/static/bg.jpg"/>");      		
 			background-color:#f06292; 
			text-align: center; 
			height: 100vh; 
			line-height: 100vh;
		} 
    .center{
	      left:12%;width:75%;height:75%;top:12%;
	
	      position:absolute;
	      text-align:center;
	      background-color: black;
	      background-color: rgba( 0, 0, 0, 0.6 );
	        /*color: white;*/
	      border: 8px solid white;
	      border-radius: 15px;
    
		}
    .text{
      position: relative;
      top:8%; height:69%;


  
      margin: 130px auto;
      color: white;
      font-size: 37;
      font-family: 'Black Han Sans', sans-serif;

    }
  
  
    input[type=search] {

      appearance: none;
      border: 2px solid black;
      border-radius: 29px;
      padding-left: 23px;
      width:75%;
      height:69px;
      float:left;
      margin-left: 10%;
      font-size: 19px;
      
      
      
    }
    input[name="address_b"] {
      border: 7px solid black;
      border-radius: 39px;
      border-color:white;
      padding: 12px 12px;
      width: 8%;
      height: 69px;
      background-color: white;
      float:right;
      margin-right: 5%;
      box-sizing: border-box;
      font-size:1em;
      position: relative;
      background-color: black;
      background-color: rgba( 0, 0, 0, 0.6 );
      color:white;
      font-weight:800;
    }

    select[name=with] {
      position: relative;
      width:150px;
      height: 39px;
      float:left;
      margin-left: 55%;
      border: 2px solid black;
      border-radius: 10px;
      padding: .4em .5em;
    }
    input[name=addr] {
      position: relative;
      width:150px;
      height: 39px;
      float:left;
      margin-left: 5%;  
      border: 2px solid black;
      border-radius: 10px;
    
    }
	</style>
</head>
<body>
  <div  class ="background">
    
  </div>
    <div class="center">
      <div class="text">
        <p><font size="9em">내 주변 GAN찮은 여행지_</font><I>당일치기 가능 근교 여행지 찾기</I></p><br /><br />
        <form method="POST">
          <br />
          <span class="search1"><input type="search" name="Theme"id="adderess" placeholder="어떤 여행을 원해?"/><input type="submit" name="address_b" class = "add" value="검색" /></span><br />
          <span class="search2"><input type="search" name=address id="sample5_address" placeholder="현재 위치"/></span><br />
          <span class="search2"> 
             <br></br ><br></br >
        

            <select name="with">
              <option value="">동반유형</option>
              <option value="가족과함께">가족</option>
              <option value="가족과함께">아이</option>
              <option value="친구와함께]">친구</option>
              <option value="연인과함께">연인</option>
              <option value="기타">선택없음</option>            
            </select>
            <input type="button" onclick="sample5_execDaumPostcode()" name="addr" value="주소" />
          </span>
        </form>

      </div>
    </div>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d5a96379a4050318b23438469c3e3f7&libraries=services"></script>
		<script>
		function sample5_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = data.address; // 최종 주소 변수

	                // 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("sample5_address").value = addr;
	                // 주소로 상세 정보를 검색
	                geocoder.addressSearch(data.address, function(results, status) {
	                    // 정상적으로 검색이 완료됐으면
	                    if (status === daum.maps.services.Status.OK) {

	                        var result = results[0]; //첫번째 결과의 값을 활용

	                        // 해당 주소에 대한 좌표를 받아서
	                        var coords = new daum.maps.LatLng(result.y, result.x);
	                        // 지도를 보여준다.
	                        mapContainer.style.display = "block";
	                        map.relayout();
	                        // 지도 중심을 변경한다.
	                        map.setCenter(coords);
	                        // 마커를 결과값으로 받은 위치로 옮긴다.
	                        marker.setPosition(coords)
	                    }
	                });
	            }
	        }).open();
	    }
		</script>
</body>
</html>