<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${contextPath}/">G.W</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${contextPath}/">Home</a></li>
        <li><a href="boardMain.do">게시판</a></li>
        <li><a href="#">Page 2</a></li>
      </ul>
      <c:if test="${empty mvo}">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">접속하기<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${contextPath}/memLoginForm.do"><span class="glyphicon glyphicon-user"></span> 로그인</a></li>
            <li><a href="${contextPath}/memJoin.do"><span class="glyphicon glyphicon-log-in"></span> 회원가입</a></li>
          </ul>
        </li>
      </ul>
      </c:if>
      <c:if test="${!empty mvo}">
      <ul class="nav navbar-nav navbar-right">
        <li>
            <li style=""><a href="${contextPath}/memUpdateForm.do">회원정보수정</a></li>
            <li><a href="${contextPath}/memImageForm.do">프로필수정</a></li>
            <li style="border-right: 1px solid lightgray;"><a href="${contextPath}/memLogout.do">로그아웃</a></li>
         	<c:if test="${!empty mvo}"> 
                 <c:if test="${empty mvo.memProfile}">
                     <li style="margin-left: 5px; margin-right: 5px">
                     	<img class="img-circle" src="${contextPath}/resources/images/person.png" style="width: 50px; height: 50px; padding: 5px"/>
                     	<strong> ${mvo.memName}</strong> 환영띠.
                     </li>
                  </c:if>
                  <c:if test="${!empty mvo.memProfile}">
                     <li style="margin-left: 5px; margin-right: 5px">
                     	<img class="img-circle" src="${contextPath}/resources/upload/${mvo.memProfile}" style="width: 50px; height: 50px; padding: 5px"/>
                     	<strong>${mvo.memName}</strong> 환영띠.
                     </li>
                  </c:if>
             </c:if>
        </li>
      </ul>
      </c:if>
    </div>
  </div>
</nav>