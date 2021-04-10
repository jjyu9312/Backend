<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
	<style>
		.background {
      background: url("<c:url value="/resources/static/bg1.jpg"/>") no-repeat;
			background-size: cover;
			animation-name: fade;
			animation-timing-function: ease-in-out;
			animation-iteration-count: infinite;
			animation-duration: 1s;
			animation-direction: alternate;
			section {
			  position: relative;
			}
			
			section img {
				position: absolute;
			}
			
			.background {
				animation-name: fade;
				animation-timing-function: ease-in-out;
				animation-iteration-count: infinite;
				animation-duration: 1s;
				animation-direction: alternate;
			}
			
			@keyframes fade {
				0% {
					opacity: 1;
				}
				25% {
					opacity: 1;
				}
				75% {
					opacity: 0;
				}
				100% {
					opacity: 0;
				}
			}

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

    .text1{
      position: relative;
      top:332px; right:23%;
      color: white;
      font-size: 47;
      font-family: 'Black Han Sans', sans-serif;
    }
    .text2{
      position: relative;
      top:313px; left:23%;

      color: white;
      font-size: 47;
      font-family: 'Black Han Sans', sans-serif;

    }
    .img1{ 
      width:25%; height:220px;

      float:left;

      background-size: cover;
      margin-left: 14%;margin-top: 69px;;
			transition: all .5s;
			background-position: center;
	
    }

		.img1:hover .child1,
		.img1:focus .child1 {
  		transform: scale(1.2);
		}	
		.img2:hover .child2,
		.img2:focus .child2 {
			transform: scale(1.2);
		}	
		.img3:hover .child3,
		.img3:focus .child3 {
			transform: scale(1.2);
		}	
		.img4:hover .child4,
		.img4:focus .child4 {
			transform: scale(1.2);
		}	
		
		
    .img2{ 

      width:25%; height:220px;
      float:right;

      background-size: cover;
      margin-right: 14%; margin-top: 69px;
			transition: all .5s;
			background-position: center;
    }
		.img3{ 
			width:25%; height:220px;

			float:left;

			background-size: cover;
			margin-left: 14%;margin-top: 69px;;
			transition: all .5s;
			background-position: center;
	
		}
		.img4{ 

			width:25%; height:220px;
			float:right;

			background-size: cover;
			margin-right: 14%; margin-top: 69px;
			transition: all .5s;
			background-position: center;
		}
		
		.child1 {
			background:  url("<c:url value="/resources/static/mountain/봄_관악_sr.png"/>")no-repeat ;
			width:100%;
			height: 100%;
			background-color: black;
			background-position: center;
			background-size: cover;
			transition: all .5s;
			border: 5px solid white;
			border-radius: 15px;
			
			
		}
		
		.child2 {
			background: url("<c:url value="/resources/static/mountain/관악산.jpg"/>")no-repeat ;
			width:100%;
			height: 100%;
			background-color: black;
			background-position: center;
			background-size: cover;
			transition: all .5s;
			border: 5px solid white;
			border-radius: 15px;
			
			
		}
		.child3 {
			background: url("<c:url value="/resources/static/mountain/가을_관악_sr.png"/>")no-repeat;
			width:100%;
			height: 100%;
			background-color: black;
			background-position: center;
			background-size: cover;
			transition: all .5s;
			border: 5px solid white;
			border-radius: 15px;
				
		}
		.child4 {
			background:url("<c:url value="/resources/static/mountain/겨울_관악_sr.png"/>")no-repeat;
			width:100%;
			height: 100%;
			background-color: black;
			background-position: center;
			background-size: cover;
			transition: all .5s;
			border: 5px solid white;
			border-radius: 15px;
			
			
		}
		.child1::before {
		  content: "";
		  display: none;
		  height: 100%;
		  width: 100%;
		  position: absolute;
		  top: 0;
		  left: 0;
		  background-color: rgba(52, 73, 94, 0.75);
		}
		.child2::before {
		  content: "";
		  display: none;
		  height: 100%;
		  width: 100%;
		  position: absolute;
		  top: 0;
		  left: 0;
		  background-color: rgba(52, 73, 94, 0.75);
		}
		.img1:hover .child1:before,
		.img1:focus .child1:before {
		  display: block;
		}
		.img2:hover .child2:before,
		.img2:focus .child2:before {
			display: block;
		}
		.text {
			font-size:18px;
			color:white;
			font-weight:bold;
		}
		
		
		
	</style>
</head>
<body>
  <div class ="background">
  </div>
    <div class="center">

      <div class="img1">
				<div class="child1">
					
				</div>
				
				<p class="text">
					봄
				</p>
      </div>
      <div class="img2">
					<div class="child2">

					</div>
					<p class="text">
						원본
					</p>
      </div>  
			<div class="img3">
				<div class="child3">
					
				</div>
				<p class="text">
					가을
				</p>
			</div>
			<div class="img4">
				<div class="child4">
					
				</div>
				<p class="text">
					겨울
				</p>
			</div>

    </div>

</body>
</html>