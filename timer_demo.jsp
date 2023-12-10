<%-- 
    Document   : timer_demo
    Created on : 18 May, 2023, 10:48:40 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<head>
        <title>Countdown Timer</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <style><%@include file="css/timer_demo.css" %></style>
</head>
<!DOCTYPE html>
<html>
<head>
  <title>Countdown Timer</title>
  <style>
    .timer {
      font-size: 48px;
      font-weight: bold;
      text-align: center;
      margin-top: 100px;
    }
  </style>
</head>
<body>
  <div class="timer" id="hours">48</div>
  <div class="timer">:</div>
  <div class="timer" id="minutes">30</div>
  <div class="timer">:</div>
  <div class="timer" id="seconds">00</div>
  
  <script>
    function updateTimer() {
      var hoursElement = document.getElementById("hours");
      var minutesElement = document.getElementById("minutes");
      var secondsElement = document.getElementById("seconds");

      var hours = parseInt(hoursElement.innerHTML);
      var minutes = parseInt(minutesElement.innerHTML);
      var seconds = parseInt(secondsElement.innerHTML);

      seconds--;

      if (seconds < 0) {
        seconds = 59;
        minutes--;
      }

      if (minutes  <0) {
        minutes = 59;
        hours--;
      }

      hoursElement.innerHTML = ('0' + hours).slice(-2);
      minutesElement.innerHTML = ('0' + minutes).slice(-2);
      secondsElement.innerHTML = ('0' + seconds).slice(-2);
    }

    setInterval(updateTimer, 1000);
  </script>
</body>
</html>

</html>


