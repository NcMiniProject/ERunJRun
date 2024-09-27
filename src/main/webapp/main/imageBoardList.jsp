<%--
  Created by IntelliJ IDEA.
  User: jinhwankim
  Date: 2024. 9. 27.
  Time: 오전 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/index.css">
</head>
<body>
<div class="wrap">
	  <div class="header">
	  	<jsp:include page="./header.jsp" />
	  </div>
	  <div class="container">
	      <!-- 동영상과 모집 섹션을 나란히 배치, 동영상 크기 확대 -->
	      <div class="row align-items-center mb-3">
	          <div class="col-md-12">
	              <video class="hero-video w-100" autoplay muted loop />
	                  <source src="./video/run.mp4" type="video/mp4">
	                  Your browser does not support the video tag.
	              </video>
	          </div>
	      </div>

	      <div id="crewBtn">
			  <input type="button" value="크루 모집">
		      <input type="button" value="오운완실패">
	      </div>

	      <!-- 카드 섹션 -->
	      <section class="content d-flex flex-wrap justify-content-center mb-5 card-section">
	          <div class="card mx-2">
	              <img src="./image/cadence.jpg" class="card-img-top" alt="Cadence">
	              <div class="card-body">
	                  <p class="card-text">케이던스(Cadence)란? 케이던스는 달리기를 할때 관절이나 무릎의 건강을 위해 신경써야 하는 부분입니다. 꼭 늘리세요!</p>
	              </div>
	          </div>

	          <div class="card mx-2" style="width: 18rem;">
	              <img src="./image/speed.jpg" class="card-img-top" alt="Speed">
	              <div class="card-body">
	                  <p class="card-text">빨리 달리는 것이 정답일까? 달리기를 빨리 한다고해서 좋은것도 나쁜것도 아닙니다. 각각의 장점들이 숨어있으니 알아가며 달리기를 즐겨보자!</p>
	              </div>
	          </div>

	          <div class="card mx-2">
	              <img src="./image/my.jpg" class="card-img-top" alt="My">
	              <div class="card-body">
	                  <p class="card-text">런닝기록을 저장 하면서 달려봐요! 런닝을 기록해두면 런닝을 더 하고싶어져요. 실제 저의 기록입니다.</p>
	              </div>
	          </div>

	          <div class="card mx-2">
	              <img src="./image/treadmill.jpg" class="card-img-top" alt="Treadmill">
	              <div class="card-body">
	                  <p class="card-text">런닝머신 보다 야외런닝을 추천하는 이유.. 가끔은 밖의 공기를 마시며 런닝을 뛰면 좋아요! 지루하지도 않아요.</p>
	              </div>
	          </div>
	      </section>
	      <hr>
	  </div>
      <div class="footer text-left">
          <jsp:include page="./footer.jsp" />
      </div>
</div>
</body>
</html>
