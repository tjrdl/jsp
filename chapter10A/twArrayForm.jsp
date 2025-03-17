<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean  class="question.TwoArray"   id="myBean"></jsp:useBean>
<jsp:setProperty property="*" name="myBean"/>
<jsp:getProperty property="num" name="myBean"/> *
<jsp:getProperty property="num" name="myBean"/> 는 <br>
<%= myBean.process() %>
