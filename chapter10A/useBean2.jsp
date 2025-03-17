<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean  class="question.GuGuDan" id="myBean" scope="page"></jsp:useBean>
<h4>
	구구단 출력하기
</h4>
<% myBean.setNum(5);%>
<br>
<% 

	for(int i = 1; i<10; i++) {
		out.print(myBean.getNum()+"*"+i+"="+myBean.process(i)+"<br>");
		
	}
%>