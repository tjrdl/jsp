<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class = "question.DivAndRemains" id="myBean"></jsp:useBean>
<jsp:setProperty property="*" name="myBean"/>
<jsp:getProperty name="myBean" property="num"/>
<%= myBean.process() %>
