<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 스케줄</title>
<link href="<c:url value='/static/css/baseCSS.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/desnSchedule.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="calendar-wrap">
<%@ include file="../../include/top.jsp"%>
  <header>
    <!-- 월, 연도 -->
    <h1>< March 2021 ></h1>
  </header>
  <div id="calendar">
    <!-- 월 화 수 목 금 토 일 -->
    <ul class="weekdays">
      <li>Sunday</li>
      <li>Monday</li>
      <li>Thursday</li>
      <li>Wednesday</li>
      <li>Thursday</li>
      <li>Friday</li>
      <li>Saturday</li>
    </ul>
    <!-- 전월 날짜 -->
    <ul class="days">
      <li class='day other-month'>
        <div class="date">28</div>
        <!-- 예약이 있다면 출력 -->
        <div class="event">
          <div class="event-desc">
            스타일컷, 고객이름, 반려견이름 
          </div>
          <div class="event-time">
            10:30am to 11:30am
          </div>
        </div>
      </li>
    <!-- 현월 날짜 -->
      <li class="day">
        <div class="date">1</div>
      </li>
      <li class="day">
        <div class="date">2</div>
        <div class="event">
          <div class="event-desc">
            스타일컷, 고객이름, 반려견이름 
          </div>
          <div class="event-time">
            15:00pm to 16:00pm
           </div>
        </div>
      </li>
      <li class="day">
        <div class="date">3</div>
      </li>
      <li class="day">
        <div class="date">4</div>
      </li>
      <li class="day">
        <div class="date">5</div>
      </li>
      <li class="day">
        <div class="date">6</div>
      </li>
    </ul>
    <!-- 두번째 줄 -->
  <ul class="days">
    <li class="day">
      <div class="date">7</div>
    </li>
    <li class="day">
      <div class="date">8</div>
    </li>
    <li class="day">
      <div class="date">9</div>
      <div class="event">
         <div class="event-desc">
           스타일컷, 고객이름, 반려견이름 
         </div>
         <div class="event-time">
           15:00pm to 16:00pm
          </div>
      </div>
    </li>
    <li class="day">
      <div class="date">10</div>
    </li>
    <li class="day">
      <div class="date">11</div>
    </li>
    <li class="day">
      <div class="date">12</div>
    </li>
    <li class="day">
      <div class="date">13</div>
    </li>
  </ul>
  <!-- 3번째 주 -->
  <ul class="days">
    <li class="day">
      <div class="date">14</div>
    </li>
    <li class="day">
      <div class="date">15</div>
    </li>
    <li class="day">
      <div class="date">16</div>
    </li>
    <li class="day">
      <div class="date">17</div>
    </li>
    <li class="day">
      <div class="date">18</div>
    </li>
    <li class="day">
      <div class="date">19</div>
    </li>
    <li class="day">
      <div class="date">20</div>
    </li>
  </ul>
  <!-- 4번째 주 -->
  <ul class="days">
    <li class="day">
      <div class="date">21</div>
    </li>
    <li class="day">
      <div class="date">22</div>
    </li>
    <li class="day">
      <div class="date">23</div>
    </li>
    <li class="day">
      <div class="date">24</div>
    </li>
    <li class="day">
      <div class="date">25</div>
    </li>
    <li class="day">
      <div class="date">26</div>
    </li>
    <li class="day">
      <div class="date">27</div>
    </li>
  </ul>
  <!-- 5번째 주 -->
  <ul class="days">
    <li class="day">
      <div class="date">28</div>
    </li>
    <li class="day">
      <div class="date">29</div>
    </li>
    <li class="day">
      <div class="date">30</div>
    </li>
    <li class="day">
      <div class="date">31</div>
    </li>
    <!-- 다음달 -->
    <li class="day other-month">
      <div class="date">1</div>
    </li>
    <li class="day other-month">
      <div class="date">2</div>
    </li>
    <li class="day other-month">
      <div class="date">3</div>
    </li>
  </ul>
  </div>
</div>
  <!-- 예약 리스트 테이블 -->
  <div class="list-area">
  <table class="table" width="80%">
    <caption>3/23(화) 예약</caption>
    <colgroup>
      <col width="10%"/>
      <col width="10%"/>
      <col width="10%"/>
      <col width="30%"/>
      <col width="20%"/>
      <col width="20%"/>
    </colgroup>
    <tr><th>No.</th><th>시간</th><th>고객명</th><th>메뉴</th><th>상태</th><th>비고</th></tr>
    <tr><td>1</td><td>10:00</td><td>김선영</td><td>[소형견]브로콜리컷</td><td>결제완료</td><td><a onclick="" >시술완료</a><a onclick="">예약취소</a></td></tr>
    <tr><td>1</td><td>10:00</td><td>김선영</td><td>[소형견]브로콜리컷</td><td>결제완료</td><td><a onclick="">시술완료</a><a onclick="">예약취소</a></td></tr>
  </table>
  </div>

    <!-- foot -->
    <footer>
      SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved.
    </footer>
</body>
</html>