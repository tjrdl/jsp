<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean  class="area.Circle" id="myBean" scope="page"></jsp:useBean>
<hr>
<h4>원의 면적 출력하기</h4><br>
<% myBean.setRadius(10); %>
반지름이<%= myBean.getRadius() %>인 원의 면적은 <%= myBean.process()%><br>

