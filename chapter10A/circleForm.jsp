<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class = "area.Circle2" id="myBean"></jsp:useBean>
<jsp:setProperty property="radius" name="myBean"/>
<%= myBean.process() %>
