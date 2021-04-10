<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="app" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	.frame {
	  width: 1700px;
	  height: 920px;
	  margin: 0 auto;
	}

  
  .container {
    display: table;
  }
    
  .header {
    padding: 30px 10px;
    text-align: center;
    margin-bottom: 5px;
  }
  
  /* .logo {
    font-size: 2em;
    font-weight: bold;
    background: #5457de;
    color: #fff;
    display: inline-block;
    padding: 0 8px;
  } */
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
.box {
  float: left;
  width: 700px;
  height: 1500;
  margin-right: 50px;
  
}


/* .box-link {
  display: block;
  text-decoration: none;
  padding: 4px 10px;
  color: #fff;
}
.nav-link:hover {
  background: #5457de;
}  */
	.content {
	  float: left;
	  width: 600px;
	}
	.footer {
	  padding:10px 7px;
	  text-align: center;
	  /* background: #eee; */
	  margin-bottom: 7px;
	}
	.scroll_List {
	   width: 700px;
	   height: 800px; 
	 } 
	
	/* 지도위치 */
	.map{
	  width: 600px;
	  height: 700px;
	  border : solid black 3px;
	  margin-top: 60px;
	  
	}
  
  ::-webkit-scrollbar{width: 16px;}
  ::-webkit-scrollbar-track {background-color:#C1C1C1;}
  ::-webkit-scrollbar-thumb {background-color:#404040;border-radius: 10px;}
  ::-webkit-scrollbar-thumb:hover {background: #555;}
  ::-webkit-scrollbar-button:start:decrement,::-webkit-scrollbar-button:end:increment {
  width:16px;height:16px;background:#404040;} 
  

  .box-list {
    list-style: none;
    
    margin-left: 60px;
    margin-right: 35px;
    padding: 3px 0;
    /* background-color : lightgrey; */
    /* border : solid white 5px; */
    
    /* width: 650px;*/
    height: 780px; 
  }
  
  .box-item {
    
    margin: 2px 0;
  
    /* width: 500px;*/
    height: 190px; 
    /* border : solid black 3px; */
    background-image: url("<c:url value="/resources/static/finn.png"/>");
    background-size : cover;    
  }
  
  /* 이미지 들어가는 부분 */
  .img{
    margin-top: 27px;
    margin-left: 44px;
    width: 220px;
    height: 125px;
    border : solid black 3px;
    background-color: black;
    float :left;
  }
  
  /* */
  .tripname{
    margin-top: 27px;
    margin-left: 30px;
    width: 220px;
    height: 133px;
    /* background-color: lightpink; */
    float :left;
    color : white;
  }

  .tripname > p {
    margin-left: 15px;
    font-weight : bold;
    font-size: large;
  }
  .select_button {
  	border:solid white;
  	border-radius:3px;
  	font-size: medium;
  	color: white;
  	background-color: #555555;
  	float:right
  	
  }
	nav ul{overflow:hidden; overflow-y:scroll;}
	
  </style>
</head>
<body>
		<div class="frame">
	    <div class="header">
	      <div class="logo"></div>
	    </div>
	    <!-- //header -->
	    <div class="container">
	      <div class="box">
	        <frame frameborder=0 class="scroll_list" scrolling="auto">
    		<nav>
    		<ul class="box-list">
   
			    <li class="box-item">
			     	<div class="img"><img src="${tourDAO[0].image}" width=220px height=133px></div>
			     	<div class="tripname">
			       	<p>${tourDAO[0].title}</p>
			       	<p><c:out value='${fn:split(tourDAO[0].address, " ")[0]} ${fn:split(tourDAO[0].address, " ")[1]}'/> <input type="button" onClick="panTo_1()" value="선택" class="select_button"></p>
			       	
			    	</div>
			   	</li>
			   	
				<li class="box-item"> 
			      <div class="img"><a href="<c:url value="Ocean"/>"><img src="${tourDAO[1].image}" width=220px height=133px></a></div>
			      <div class="tripname">
			        <p>${tourDAO[1].title}</p>
			        <p><c:out value='${fn:split(tourDAO[1].address, " ")[0]} ${fn:split(tourDAO[1].address, " ")[1]}'/> <input type="button" onClick="panTo_2()" value="선택" class="select_button"></p>
			        
			     </div>
			    </li>
			    <li class="box-item">
			      <div class="img"><img src="${tourDAO[2].image}" width=220px height=133px></div>
			      <div class="tripname">
			        <p>${tourDAO[2].title}</p>
			        <p><c:out value='${fn:split(tourDAO[2].address, " ")[0]} ${fn:split(tourDAO[2].address, " ")[1]}'/> <input type="button" onClick="panTo_3()" value="선택" class="select_button"></p>
			        
			     </div>
			    </li>
			    <li class="box-item">
			      <div class="img"><img src="${tourDAO[3].image}" width=220px height=133px></div>
			      <div class="tripname">
			        <p>${tourDAO[3].title}</p>
			        <p><c:out value='${fn:split(tourDAO[3].address, " ")[0]} ${fn:split(tourDAO[3].address, " ")[1]}'/> <input type="button" onClick="panTo_4()" value="선택" class="select_button"></p>
			        
			     </div>
			    </li>
			    <li class="box-item">
			      <div class="img"><a href="<c:url value="Mountain"/>"><img src="${tourDAO[4].image}" width=220px height=133px></a></div>
			      <div class="tripname">
			        <p>${tourDAO[4].title}</p>
			        <p><c:out value='${fn:split(tourDAO[4].address, " ")[0]} ${fn:split(tourDAO[4].address, " ")[1]}'/> <input type="button" onClick="panTo_5()" value="선택" class="select_button"></p>
			        
			     </div>
			    </li> 
  
  			</ul>
  			</nav>
        	</frame>
      	</div>
      <!-- //nav -->
      	<div class="content">
        
        <!-- 지도들어감 -->
<!--         <div class="map"> -->
<!--           <h1>지도</h1> -->
          <div id="map" style="width: 600px;height: 700px;border : solid black 3px;margin-top: 60px;" ></div>
<!--         </div> -->
        
        
        
      	</div>
    </div>
    <div class="footer">
	</div>

    </div>

	
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d5a96379a4050318b23438469c3e3f7&libraries=services"></script>
    <script type="text/javascript" charset="UTF-8">

        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(37.50445, 127.048986), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
     	

        var map = new kakao.maps.Map(mapContainer, mapOption);
        
     	// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
        
        

        
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('<c:out value="${currentLoc}"/>', function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords,
		            opacity:0.5
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">내 집</div>'
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		        var circle = new kakao.maps.Circle({
		            center : coords,  // 원의 중심좌표 입니다
		            radius: 66600, // 미터 단위의 원의 반지름입니다
		            strokeWeight: 5, // 선의 두께입니다
		            strokeColor: '#75B8FA', // 선의 색깔입니다
		            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		            strokeStyle: 'dashed', // 선의 스타일 입니다
		            fillColor: '#CFE7FF', // 채우기 색깔입니다
		            fillOpacity: 0.4  // 채우기 불투명도 입니다
		        });

		        circle.setMap(map);
		    } 
		});    
       
        // 마커를 표시할 위치와 title 객체 배열입니다
        var positions = [
           
        	{
                title: '<c:out value="${tourDAO[0].title}"/>',
                latlng: new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[0].y}"/>'), parseFloat('<c:out value="${tourDAO[0].x}"/>'))
            }
        	,
        	{
                title: '<c:out value="${tourDAO[1].title}"/>',
                latlng: new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[1].y}"/>'), parseFloat('<c:out value="${tourDAO[1].x}"/>'))
            },
            {
                title: '<c:out value="${tourDAO[2].title}"/>',
                latlng: new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[2].y}"/>'), parseFloat('<c:out value="${tourDAO[2].x}"/>'))
            },
            {
                title: '<c:out value="${tourDAO[3].title}"/>',
                latlng: new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[3].y}"/>'), parseFloat('<c:out value="${tourDAO[3].x}"/>'))
            },
            {
                title: '<c:out value="${tourDAO[4].title}"/>',
                latlng: new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[4].y}"/>'), parseFloat('<c:out value="${tourDAO[4].x}"/>'))
            }
        ];

        // 마커 이미지의 이미지 주소입니다
        var imageSrc = "D:/Project/UntactTourRecommend/fstproject/static/markerStar.png";

        for (var i = 0; i < positions.length; i ++) {

            // 마커 이미지의 이미지 크기 입니다
            var imageSize = new kakao.maps.Size(24, 35);

            // 마커 이미지를 생성합니다
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                map: map, // 마커를 표시할 지도
                position: positions[i].latlng, // 마커를 표시할 위치
                title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다

            });

        }
        
        function panTo_1() {
            // 이동할 위도 경도 위치를 생성합니다 
            var moveLatLon = new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[0].y}"/>'), parseFloat('<c:out value="${tourDAO[0].x}"/>'));
            
            // 지도 중심을 부드럽게 이동시킵니다
            // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
            map.panTo(moveLatLon);            
        };
        
        function panTo_2() {
            // 이동할 위도 경도 위치를 생성합니다 
            var moveLatLon = new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[1].y}"/>'), parseFloat('<c:out value="${tourDAO[1].x}"/>'));
            
            // 지도 중심을 부드럽게 이동시킵니다
            // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
            map.panTo(moveLatLon);            
        };
        function panTo_3() {
            // 이동할 위도 경도 위치를 생성합니다 
            var moveLatLon = new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[2].y}"/>'), parseFloat('<c:out value="${tourDAO[2].x}"/>'));
            
            // 지도 중심을 부드럽게 이동시킵니다
            // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
            map.panTo(moveLatLon);            
        };
        function panTo_4() {
            // 이동할 위도 경도 위치를 생성합니다 
            var moveLatLon = new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[3].y}"/>'), parseFloat('<c:out value="${tourDAO[3].x}"/>'));
            
            // 지도 중심을 부드럽게 이동시킵니다
            // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
            map.panTo(moveLatLon);            
        };
        function panTo_5() {
            // 이동할 위도 경도 위치를 생성합니다 
            var moveLatLon = new kakao.maps.LatLng(parseFloat('<c:out value="${tourDAO[4].y}"/>'), parseFloat('<c:out value="${tourDAO[4].x}"/>'));
            
            // 지도 중심을 부드럽게 이동시킵니다
            // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
            map.panTo(moveLatLon);            
        }
       
  
    </script>
</body>
</html>